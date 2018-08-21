package com.example.smadil.projectapp;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Html;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView textView = (TextView) findViewById(R.id.textview);
        String text = "<font color =#ffd2f8>FIND.</font><font color =#ceecfb>PLAN.</font><font color =#a78eff>TRIP</font>";
        textView.setText(Html.fromHtml(text));

        final Intent i = new Intent(MainActivity.this, LoginActivity.class);
        Thread timer = new Thread(){
            public void run(){
                try{
                    sleep(4000);   // set the duration of splash screen
                }
                catch(InterruptedException e){
                    e.printStackTrace();
                } finally {

                    startActivity(i);
                    finish();
                }
            }
        };
        timer.start();

    }
}
