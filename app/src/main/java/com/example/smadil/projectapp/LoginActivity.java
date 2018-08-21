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

public class LoginActivity extends AppCompatActivity {

    EditText username_et, password_et;
    RequestQueue queue;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        username_et = (EditText) findViewById(R.id.email);
        password_et = (EditText) findViewById(R.id.password);

        queue = Volley.newRequestQueue(this);
    }

    public void onLogin(View view) {

        if (username_et.getText().toString().equals("")) {
            username_et.setError("Enter email");
        }
        else if (password_et.getText().toString().equals("")) {
            password_et.setError("Enter password");
        }
        else {

            final ProgressDialog pd = new ProgressDialog(this);
            pd.setMessage("Connecting...");
            pd.show();
            pd.setCanceledOnTouchOutside(false);
            
            // Place your login.php file url here
            String url = "http://php/login.php";
            
            StringRequest postRequest = new StringRequest(Request.Method.POST, url,
                    new Response.Listener<String>() {
                        @Override
                        public void onResponse(String response) {
                            Toast.makeText(LoginActivity.this, response, Toast.LENGTH_SHORT).show();

                            if (response.equals("Login Success")) {
                                pd.dismiss();
                                startActivity(new Intent(LoginActivity.this, HomeActivity.class));
                                finish();
                            }
                            Log.d("Response", response);
                        }
                    },
                    new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {
                            Toast.makeText(LoginActivity.this, error.toString(), Toast.LENGTH_SHORT).show();
//                            Log.d("Error.Response", error.toString());
                            startActivity( new Intent(LoginActivity.this,ErrorActivity.class));
                        }
                    }
            ) {
                @Override
                protected Map<String, String> getParams() {
                    Map<String, String> params = new HashMap<String, String>();
                    params.put("email", username_et.getText().toString());
                    params.put("password", password_et.getText().toString());

                    return params;
                }
            };
            queue.add(postRequest);
        }
    }

    public void onSignup(View view) {
        startActivity( new Intent(LoginActivity.this,RegisterActivity.class));
    }

    public void onSkip(View view) {
        startActivity( new Intent(LoginActivity.this,HomeActivity.class));
    }
}
