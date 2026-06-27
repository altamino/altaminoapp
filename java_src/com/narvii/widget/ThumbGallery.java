package com.narvii.widget;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Media;
import java.util.List;

/* loaded from: classes3.dex */
public class ThumbGallery extends HorizontalRecyclerView {
    private GalleryRecyclerAdapter adapter;
    private boolean darkTheme;
    private List<Media> list;
    private OnItemClickListener listener;

    public interface OnItemClickListener {
        void onItemClick(Media media);
    }

    public void setDarkTheme(boolean z) {
        this.darkTheme = z;
    }

    public ThumbGallery(Context context) {
        this(context, null);
    }

    public ThumbGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }

    public void setMediaList(List<Media> list) {
        this.list = list;
        GalleryRecyclerAdapter galleryRecyclerAdapter = this.adapter;
        if (galleryRecyclerAdapter == null) {
            this.adapter = new GalleryRecyclerAdapter();
            setAdapter(this.adapter);
        } else {
            galleryRecyclerAdapter.notifyDataSetChanged();
        }
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }

    class GalleryRecyclerAdapter extends RecyclerView.Adapter<GalleryViewHolder> {
        GalleryRecyclerAdapter() {
        }

        class GalleryViewHolder extends RecyclerView.ViewHolder {
            TextView textView;
            ThumbImageView thumbImageView;

            public GalleryViewHolder(View view) {
                super(view);
                this.thumbImageView = (ThumbImageView) view.findViewById(R.id.image);
                this.textView = (TextView) view.findViewById(R.id.text);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public GalleryViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new GalleryViewHolder(LayoutInflater.from(ThumbGallery.this.getContext()).inflate(R.layout.gallery_thumb, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(GalleryViewHolder galleryViewHolder, int i) {
            final Media media = (Media) ThumbGallery.this.list.get(i);
            if (media == null) {
                return;
            }
            ThumbImageView thumbImageView = galleryViewHolder.thumbImageView;
            if (thumbImageView != null) {
                thumbImageView.setImageMedia(media);
                galleryViewHolder.thumbImageView.setDefaultDrawable(ContextCompat.getDrawable(ThumbGallery.this.getContext(), ThumbGallery.this.darkTheme ? R.color.placeholder_darker : R.color.placeholder));
            }
            TextView textView = galleryViewHolder.textView;
            if (textView != null) {
                textView.setVisibility(TextUtils.isEmpty(media.caption) ? 8 : 0);
                galleryViewHolder.textView.setText(media.caption);
            }
            galleryViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.widget.ThumbGallery.GalleryRecyclerAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ThumbGallery.this.listener == null || media == null) {
                        return;
                    }
                    ThumbGallery.this.listener.onItemClick(media);
                }
            });
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (ThumbGallery.this.list != null) {
                return ThumbGallery.this.list.size();
            }
            return 0;
        }
    }
}
