package com.example.smadil.projectapp;

import android.app.ProgressDialog;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.HashMap;
import java.util.Map;

public class RegisterActivity extends AppCompatActivity {

    EditText name_et,email_et,password_et;
    RequestQueue queue;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        name_et = (EditText)findViewById(R.id.name);
        email_et = (EditText)findViewById(R.id.email);
        password_et = (EditText)findViewById(R.id.password);

        queue = Volley.newRequestQueue(this);
    }

    public void onSignup(View view) {

        if (name_et.getText().toString().equals("")) {
            name_et.setError("Enter username");
        }
        else if (email_et.getText().toString().equals("")) {
            email_et.setError("Enter email");
        }
        else if (password_et.getText().toString().equals("")) {
            password_et.setError("Enter password");
        }
        else {

            final ProgressDialog pd = new ProgressDialog(this);
            pd.setMessage("Connecting...");
            pd.show();
            pd.setCanceledOnTouchOutside(false);

            String url = "http://elmentrix.000webhostapp.com/project/register.php";
            StringRequest postRequest = new StringRequest(Request.Method.POST, url,
                    new Response.Listener<String>() {
                        @Override
                        public void onResponse(String response) {
                            Toast.makeText(RegisterActivity.this, response, Toast.LENGTH_SHORT).show();

                            if (response.equals("Successfully Signed In")) {
                                pd.dismiss();
                                startActivity(new Intent(RegisterActivity.this, LoginActivity.class));
                                finish();
                            }
                            Log.d("Response", response);
                        }
                    },
                    new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            Toast.makeText(RegisterActivity.this, error.toString(), Toast.LENGTH_SHORT).show();
//                            Log.d("Error.Response", error.toString());
                            startActivity( new Intent(RegisterActivity.this,ErrorActivity.class));
                        }
                    }
            ) {
                @Override
                protected Map<String, String> getParams() {
                    Map<String, String> params = new HashMap<String, String>();
                    params.put("name", name_et.getText().toString());
                    params.put("email", email_et.getText().toString());
                    params.put("password", password_et.getText().toString());

                    return params;
                }
            };
            queue.add(postRequest);
        }
    }

    public void onLogin(View view) {
        startActivity( new Intent(RegisterActivity.this,LoginActivity.class));
    }

    public void onSkip(View view) {
        startActivity( new Intent(RegisterActivity.this,HomeActivity.class));
    }
}
