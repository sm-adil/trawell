package com.example.smadil.projectapp;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

import static com.example.smadil.projectapp.HomeActivity.extra_id;
import static com.example.smadil.projectapp.HomeActivity.extra_name;
import static com.example.smadil.projectapp.HomeActivity.extra_address;
import static com.example.smadil.projectapp.HomeActivity.extra_address_uri;
import static com.example.smadil.projectapp.HomeActivity.extra_description;
import static com.example.smadil.projectapp.HomeActivity.extra_rating;
import static com.example.smadil.projectapp.HomeActivity.extra_img;


public class GalleryActivity extends AppCompatActivity {

    String id, name, address, address_uri, description, rating;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_gallery);

        Intent intent = getIntent();

        String id = intent.getStringExtra(extra_id);

        String imageUrl = intent.getStringExtra(extra_img);

        name = intent.getStringExtra(extra_name);
        address = intent.getStringExtra(extra_address);
        address_uri = intent.getStringExtra(extra_address_uri);
        description = intent.getStringExtra(extra_description);
        rating = intent.getStringExtra(extra_rating);

        ImageView imageView = (ImageView) findViewById(R.id.place_image);
        TextView place_name = (TextView) findViewById(R.id.place_name);
        TextView place_address = (TextView) findViewById(R.id.place_address);
        TextView place_description = (TextView) findViewById(R.id.place_description);
        TextView place_rating = (TextView) findViewById(R.id.place_rating);

        Glide.with(this)
                .load(imageUrl)
                .into(imageView);
        place_name.setText(name);
        place_address.setText(address);
        place_description.setText(description);
        place_rating.setText(rating);

    }

    public void onLocation(View view) {

        Intent mapIntent, chooser;

        String label = name;
        String uriBegin = "geo:" + address_uri;
        String query = address_uri + "(" + label + ")";
        String encodedQuery = Uri.encode(query);
        String uriString = uriBegin + "?q=" + encodedQuery + "&z=16";
        Uri uri = Uri.parse(uriString);

        mapIntent = new Intent(android.content.Intent.ACTION_VIEW, uri);

        chooser = Intent.createChooser(mapIntent, "Launch Maps");
        startActivity(chooser);
    }
}
