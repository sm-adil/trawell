package com.example.smadil.projectapp;

import android.app.ProgressDialog;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SearchView;
import android.util.Log;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;;

import java.util.ArrayList;

public class HomeActivity extends AppCompatActivity implements PlacesAdapter.OnItemClickListener {

    public static final String extra_img = "imageUrl";
    public static final String extra_id = "placeId";
    public static final String extra_name = "placeName";
    public static final String extra_address = "placeAddress";
    public static final String extra_address_uri = "placeAddress_URI";
    public static final String extra_description = "placeDescription";
    public static final String extra_rating = "placeRating";

    private static final String places_url = "https://elmentrix.000webhostapp.com/project/places_api.php";

    RecyclerView recyclerView;
    PlacesAdapter placesAdapter;

    SearchView sv;

    ArrayList<Place> placeList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        sv = (SearchView) findViewById(R.id.mSearch);

        placeList = new ArrayList<>();

        recyclerView = (RecyclerView) findViewById(R.id.recyclerView);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));


//        placeList.add(
//                new Place(
//                        1,
//                        "Kudroli CPC",
//                        "Kudroli",
//                        "4.3",
//                        R.drawable.background_gradient));

        //SEARCH
        sv.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
            @Override
            public boolean onQueryTextSubmit(String query) {
                return false;
            }

            @Override
            public boolean onQueryTextChange(String query) {
                placesAdapter.getFilter().filter(query);
                return false;
            }
        });
        loadPlaces();
    }

    private void loadPlaces() {

        final ProgressDialog pd = new ProgressDialog(this);
        pd.setMessage("Loading places...");
        pd.show();
        pd.setCanceledOnTouchOutside(false);

        StringRequest stringRequest = new StringRequest(Request.Method.GET, places_url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        pd.dismiss();

                        try {
                            JSONArray places = new JSONArray(response);

                            for (int i = 0; i < places.length(); i++) {
                                JSONObject placeObject = places.getJSONObject(i);

                                String id = placeObject.getString("id");
                                String name = placeObject.getString("name");
                                String address = placeObject.getString("address");
                                String address_uri = placeObject.getString("address_uri");
                                String description = placeObject.getString("description");
                                String rating = placeObject.getString("rating");
                                String image = placeObject.getString("image");

                                Place place = new Place(id, name, address, address_uri, description, rating, image);

                                placeList.add(place);
                            }
                            placesAdapter = new PlacesAdapter(HomeActivity.this, placeList);
                            recyclerView.setAdapter(placesAdapter);
                            placesAdapter.setOnItemClickListener(HomeActivity.this);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(HomeActivity.this, error.toString(), Toast.LENGTH_SHORT).show();
//                Log.d("Error.Response", error.toString());
                startActivity(new Intent(HomeActivity.this,ErrorActivity.class));
            }
        });
        Volley.newRequestQueue(this).add(stringRequest);
    }

    @Override
    public void onItemClick(int position) {

        Intent dataintent = new Intent(this,GalleryActivity.class);
        Place clickedPlace = placeList.get(position);

        dataintent.putExtra(extra_id, clickedPlace.getId());
        dataintent.putExtra(extra_name, clickedPlace.getName());
        dataintent.putExtra(extra_address, clickedPlace.getAddress());
        dataintent.putExtra(extra_address_uri, clickedPlace.getAddress_uri());
        dataintent.putExtra(extra_description, clickedPlace.getDescription());
        dataintent.putExtra(extra_rating, clickedPlace.getRating());
        dataintent.putExtra(extra_img, clickedPlace.getImage_url());

        startActivity(dataintent);
    }
}