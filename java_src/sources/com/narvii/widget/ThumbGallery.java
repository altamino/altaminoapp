package com.narvii.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.model.Media;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ThumbGallery extends HorizontalRecyclerView {
    private GalleryRecyclerAdapter adapter;
    private boolean darkTheme;
    private List<Media> list;
    private OnItemClickListener listener;

    class GalleryRecyclerAdapter extends RecyclerView.Adapter<GalleryViewHolder> {

        class GalleryViewHolder extends RecyclerView.ViewHolder {
            TextView textView;
            ThumbImageView thumbImageView;

            public GalleryViewHolder(View view) {
                super(view);
                this.thumbImageView = (ThumbImageView) view.findViewById(R.id.image);
                this.textView = (TextView) view.findViewById(R.id.text);
            }
        }

        GalleryRecyclerAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (ThumbGallery.this.list != null) {
                return ThumbGallery.this.list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(GalleryViewHolder galleryViewHolder, int i10) {
            final Media media = (Media) ThumbGallery.this.list.get(i10);
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

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public GalleryViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new GalleryViewHolder(LayoutInflater.from(ThumbGallery.this.getContext()).inflate(R.layout.gallery_thumb, viewGroup, false));
        }
    }

    public interface OnItemClickListener {
        void onItemClick(Media media);
    }

    public ThumbGallery(Context context) {
        this(context, null);
    }

    public void setDarkTheme(boolean z6) {
        this.darkTheme = z6;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.listener = onItemClickListener;
    }

    public ThumbGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }

    public void setMediaList(List<Media> list) {
        this.list = list;
        GalleryRecyclerAdapter galleryRecyclerAdapter = this.adapter;
        if (galleryRecyclerAdapter != null) {
            galleryRecyclerAdapter.notifyDataSetChanged();
            return;
        }
        GalleryRecyclerAdapter galleryRecyclerAdapter2 = new GalleryRecyclerAdapter();
        this.adapter = galleryRecyclerAdapter2;
        setAdapter(galleryRecyclerAdapter2);
    }
}
