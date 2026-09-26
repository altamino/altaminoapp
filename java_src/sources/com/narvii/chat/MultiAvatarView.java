package com.narvii.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.narvii.amino.master.R;
import com.narvii.widget.MaskView;
import com.narvii.widget.NVImageView;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class MultiAvatarView extends MaskView {
    int count;
    NVImageView v1;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    NVImageView f1853v2;

    /* JADX INFO: renamed from: v3, reason: collision with root package name */
    NVImageView f1854v3;

    /* JADX INFO: renamed from: v4, reason: collision with root package name */
    NVImageView f1855v4;

    protected void set(String... strArr) {
        NVImageView nVImageView;
        NVImageView nVImageView2;
        NVImageView nVImageView3;
        NVImageView nVImageView4;
        if (this.count != strArr.length) {
            this.count = strArr.length;
            removeAllViews();
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
            int i10 = this.count;
            if (i10 == 1) {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_1, this);
            } else if (i10 == 2) {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_2, this);
            } else if (i10 == 3) {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_3, this);
            } else if (i10 != 4) {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_4, this);
            } else {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_4, this);
            }
            this.v1 = (NVImageView) findViewById(R.id.image1);
            this.f1853v2 = (NVImageView) findViewById(R.id.image2);
            this.f1854v3 = (NVImageView) findViewById(R.id.image3);
            this.f1855v4 = (NVImageView) findViewById(R.id.image4);
        }
        if (this.count > 1) {
            this.placeholderColor = getResources().getColor(R.color.user_avatar_placeholder);
        } else {
            this.placeholderColor = 0;
        }
        if (strArr.length > 0 && (nVImageView4 = this.v1) != null) {
            nVImageView4.setImageUrl(strArr[0]);
        }
        if (strArr.length > 1 && (nVImageView3 = this.f1853v2) != null) {
            nVImageView3.setImageUrl(strArr[1]);
        }
        if (strArr.length > 2 && (nVImageView2 = this.f1854v3) != null) {
            nVImageView2.setImageUrl(strArr[2]);
        }
        if (strArr.length <= 3 || (nVImageView = this.f1855v4) == null) {
            return;
        }
        nVImageView.setImageUrl(strArr[3]);
    }

    public void setAvatar(String str) {
        if (str == null) {
            set(new String[0]);
        } else {
            set(str);
        }
    }

    public void setAvatars(List<String> list) {
        if (list == null || list.isEmpty()) {
            set(new String[0]);
        } else {
            set((String[]) list.toArray(new String[list.size()]));
        }
    }

    public MultiAvatarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.count = 0;
    }
}
