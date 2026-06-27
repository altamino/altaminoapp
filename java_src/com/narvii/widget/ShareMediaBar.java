package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.ShareDialog;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ShareMediaBar extends FrameLayout {
    View bar1;
    public BaseShareButtonRepost buttonRepost;
    private final View.OnClickListener clickListener;
    CommunityConfigHelper communityConfigHelper;
    NVContext context;
    ShareMediaInnerClickListener innerClickListener;
    Media media;
    List<Media> mediaList;
    NVObject parent;
    ShareMediaClickListener shareMediaClickListener;
    boolean showAll;
    public String source;

    public interface ShareMediaClickListener {
        void onShareMediaClicked(NVContext nVContext, Media media, NVObject nVObject, List<Media> list, BaseShareButtonRepost baseShareButtonRepost);
    }

    public interface ShareMediaInnerClickListener {
        void onShareMediaClicked();
    }

    public ShareMediaBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.buttonRepost = null;
        this.clickListener = new View.OnClickListener() { // from class: com.narvii.widget.ShareMediaBar.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == R.id.share_media_entry) {
                    ShareMediaBar shareMediaBar = ShareMediaBar.this;
                    ShareMediaClickListener shareMediaClickListener = shareMediaBar.shareMediaClickListener;
                    if (shareMediaClickListener != null) {
                        shareMediaClickListener.onShareMediaClicked(shareMediaBar.context, shareMediaBar.media, shareMediaBar.parent, shareMediaBar.mediaList, shareMediaBar.buttonRepost);
                        return;
                    }
                    ShareMediaInnerClickListener shareMediaInnerClickListener = shareMediaBar.innerClickListener;
                    if (shareMediaInnerClickListener != null) {
                        shareMediaInnerClickListener.onShareMediaClicked();
                    }
                    ShareMediaBar shareMediaBar2 = ShareMediaBar.this;
                    ShareDialog.getShareDialogFromMedia(shareMediaBar2.context, shareMediaBar2.media, shareMediaBar2.parent, shareMediaBar2.mediaList, shareMediaBar2.buttonRepost).setSource(ShareMediaBar.this.source).show();
                }
            }
        };
    }

    public void setInnerClickListener(ShareMediaInnerClickListener shareMediaInnerClickListener) {
        this.innerClickListener = shareMediaInnerClickListener;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        LayoutInflater.from(getContext()).inflate(R.layout.share_media_bar, this);
        this.bar1 = findViewById(R.id.share_media_bar1);
        findViewById(R.id.share_media_entry).setOnClickListener(this.clickListener);
        this.context = (NVContext) getContext();
        this.communityConfigHelper = new CommunityConfigHelper(this.context);
    }

    public void setShareMediaClickListener(ShareMediaClickListener shareMediaClickListener) {
        this.shareMediaClickListener = shareMediaClickListener;
    }

    public void setMedia(NVObject nVObject, Media media, List<Media> list) {
        Media media2 = this.media;
        String str = media2 == null ? null : media2.url;
        this.parent = nVObject;
        this.media = media;
        Media media3 = this.media;
        String str2 = media3 != null ? media3.url : null;
        if (!this.showAll && !Utils.isEquals(str, str2)) {
            this.bar1.setVisibility(0);
        }
        if (list == null || list.isEmpty()) {
            list = new ArrayList<>();
            list.add(media);
        }
        this.mediaList = list;
    }

    public void setRepostButton(BaseShareButtonRepost baseShareButtonRepost) {
        this.buttonRepost = baseShareButtonRepost;
    }
}
