package com.example.smadil.projectapp;

/**
 * Created by S.m Adil on 03-08-2018.
 */
import android.widget.Filter;
import java.util.ArrayList;

public class CustomFilter extends Filter {

    PlacesAdapter adapter;
    ArrayList<Place> filterList;

    Place place;

    public CustomFilter(ArrayList<Place> filterList, PlacesAdapter adapter) {
        this.adapter = adapter;
        this.filterList = filterList;
    }

    @Override
    protected FilterResults performFiltering(CharSequence constraint) {
        FilterResults results = new FilterResults();

        if(constraint != null && constraint.length() > 0) {

            constraint = constraint.toString().toUpperCase();

            ArrayList<Place> filteredPlaces = new ArrayList<>();

            for (int i = 0; i < filterList.size(); i++) {

                if(filterList.get(i).getName().toUpperCase().contains(constraint) || filterList.get(i).getAddress().toUpperCase().contains(constraint)) {

                    filteredPlaces.add(filterList.get(i));
                }
            }

            results.count = filteredPlaces.size();
            results.values = filteredPlaces;
        }
        else {
            results.count = filterList.size();
            results.values = filterList;
        }
        return results;
    }

    @Override
    protected void publishResults(CharSequence constraint, FilterResults results) {

        adapter.placeList = (ArrayList<Place>) results.values;

        adapter.notifyDataSetChanged();
    }
}