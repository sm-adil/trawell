package com.example.smadil.projectapp;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;

import java.util.ArrayList;

/**
 * Created by S.m Adil on 02-08-2018.
 */
public class PlacesAdapter extends RecyclerView.Adapter<PlacesAdapter.PlacesViewHolder> implements Filterable {

    Context ctx;
    ArrayList <Place> placeList, filterList;
    CustomFilter filter;

    private OnItemClickListener mListener;

    public interface OnItemClickListener {
        void onItemClick(int position);
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        mListener = listener;
    }

    public PlacesAdapter(Context ctx, ArrayList<Place> placeList) {
        this.ctx = ctx;
        this.placeList = placeList;
        this.filterList = placeList;
    }

    @Override
    public PlacesViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(ctx);
        View view = inflater.inflate(R.layout.list_layout, null);
        return new PlacesViewHolder(view);
    }

    @Override
    public void onBindViewHolder(PlacesViewHolder holder, int position) {

        Place place = placeList.get(position);

        holder.name.setText(place.getName());
        holder.address.setText(place.getAddress());
        holder.rating.setText(place.getRating());

        Glide.with(ctx)
                .load(place.getImage_url())
                .into(holder.imageView);
    }

    @Override
    public int getItemCount() {
        return placeList.size();
    }

    class PlacesViewHolder extends RecyclerView.ViewHolder {

        ImageView imageView;
        TextView name, address, rating;

        public PlacesViewHolder(View itemView) {
            super(itemView);

            imageView = (ImageView) itemView.findViewById(R.id.imageView);
            name = (TextView) itemView.findViewById(R.id.placename);
            address = (TextView) itemView.findViewById(R.id.placeaddress);
            rating = (TextView) itemView.findViewById(R.id.placerating);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (mListener != null) {
                        int position = getAdapterPosition();
                        if (position != RecyclerView.NO_POSITION) {
                            mListener.onItemClick(position);
                        }
                    }
                }
            });
        }
    }

    @Override
    public Filter getFilter() {
        if(filter == null) {
            filter = new CustomFilter(filterList, this);
        }
        return filter;
    }
}
