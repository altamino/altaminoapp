package com.narvii.amino.speeddial;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.ChatThread;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes2.dex */
public class LiveVVChatItemView extends FrameLayout {
    private VVActiveUserLayout avtiveUserLayout;
    private ChatThread chatThread;
    private View imageOverlay;
    private NVImageView imgBg;
    private int oneUserSize;
    private TextView tvTitle;
    private int twoUserSize;

    public LiveVVChatItemView(Context context) {
        this(context, null);
    }

    public LiveVVChatItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.oneUserSize = 0;
        this.twoUserSize = 0;
        FrameLayout.inflate(context, R.layout.item_live_vv, this);
        initViews();
        setClipChildren(false);
        setClipToPadding(false);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initViews();
    }

    private void initViews() {
        this.imgBg = (NVImageView) findViewById(R.id.vv_bg);
        this.imageOverlay = findViewById(R.id.image_overlay);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1879048192);
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
        this.imgBg.setDefaultDrawable(gradientDrawable);
        this.imgBg.setLoadingDrawable(gradientDrawable);
        this.imgBg.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.amino.speeddial.LiveVVChatItemView.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                LiveVVChatItemView.this.imageOverlay.setVisibility(i == 4 ? 0 : 8);
            }
        });
        this.avtiveUserLayout = (VVActiveUserLayout) findViewById(R.id.user_container);
        this.tvTitle = (TextView) findViewById(R.id.title);
    }

    public void updateViews(ChatThread chatThread, List<User> list) {
        if (chatThread == null || list == null) {
            return;
        }
        this.imgBg.setImageUrl(chatThread.icon);
        this.avtiveUserLayout.updateUserList(list);
        this.tvTitle.setText(chatThread.title);
    }

    public void addUser() {
        this.avtiveUserLayout.addUser();
    }

    public void removeUser() {
        this.avtiveUserLayout.removeUser();
    }
}
