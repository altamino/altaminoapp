package com.narvii.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.narvii.amino.mastes.R;
import com.narvii.widget.MaskView;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes2.dex */
public class MultiAvatarView extends MaskView {
    int count;
    NVImageView v1;
    NVImageView v2;
    NVImageView v3;
    NVImageView v4;

    public MultiAvatarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.count = 0;
    }

    protected void set(String... strArr) {
        NVImageView nVImageView;
        NVImageView nVImageView2;
        NVImageView nVImageView3;
        NVImageView nVImageView4;
        if (this.count != strArr.length) {
            this.count = strArr.length;
            removeAllViews();
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
            int i = this.count;
            if (i == 1) {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_1, this);
            } else if (i == 2) {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_2, this);
            } else if (i == 3) {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_3, this);
            } else if (i == 4) {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_4, this);
            } else {
                layoutInflaterFrom.inflate(R.layout.chat_multi_avatars_4, this);
            }
            this.v1 = (NVImageView) findViewById(R.id.image1);
            this.v2 = (NVImageView) findViewById(R.id.image2);
            this.v3 = (NVImageView) findViewById(R.id.image3);
            this.v4 = (NVImageView) findViewById(R.id.image4);
        }
        if (this.count > 1) {
            this.placeholderColor = getResources().getColor(R.color.user_avatar_placeholder);
        } else {
            this.placeholderColor = 0;
        }
        if (strArr.length > 0 && (nVImageView4 = this.v1) != null) {
            nVImageView4.setImageUrl(strArr[0]);
        }
        if (strArr.length > 1 && (nVImageView3 = this.v2) != null) {
            nVImageView3.setImageUrl(strArr[1]);
        }
        if (strArr.length > 2 && (nVImageView2 = this.v3) != null) {
            nVImageView2.setImageUrl(strArr[2]);
        }
        if (strArr.length <= 3 || (nVImageView = this.v4) == null) {
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
}
