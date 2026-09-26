package com.narvii.sharedfolder;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.model.SharedAlbum;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes10.dex */
public class HeaderLayout extends RelativeLayout implements View.OnClickListener {
    View authorLayout;
    public UserAvatarLayout avatar;
    private RealtimeBlurView blurView;
    public NVImageView cover;
    public TextView description;
    public View gradient;
    int height1;
    View lock;
    NicknameView nicknameView;
    public TextView photosCount;
    SharedAlbum sharedAlbum;
    public TextView title;
    public TextView title2;
    public TextView votesCount;

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void setHeight1(int i10) {
        this.height1 = i10;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent;
        if (this.sharedAlbum == null || view.getId() != R.id.author_layout || this.sharedAlbum.author == null || (intent = UserProfileFragment.intent(Utils.getNVContext(getContext()), this.sharedAlbum.author)) == null) {
            return;
        }
        try {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    public void setSharedAlbum(SharedAlbum sharedAlbum) {
        if (this.sharedAlbum == sharedAlbum) {
            return;
        }
        this.sharedAlbum = sharedAlbum;
        this.title.setText(sharedAlbum.getTitle(getContext()));
        this.title2.setText(sharedAlbum.getTitle(getContext()));
        this.lock.setVisibility(sharedAlbum.isLocked() ? 0 : 8);
        this.cover.setImageMedia(sharedAlbum.getCoverImage());
        this.description.setText(sharedAlbum.description);
        this.description.setVisibility(TextUtils.isEmpty(sharedAlbum.description) ? 8 : 0);
        this.photosCount.setText(com.narvii.util.text.TextUtils.getCountText(getContext(), sharedAlbum.filesCount, R.string.one_photo, R.string.n_photos));
        this.votesCount.setText(com.narvii.util.text.TextUtils.getCountText(getContext(), sharedAlbum.votesCount, R.string.one_like, R.string.n_likes));
        this.nicknameView.setUser(sharedAlbum.author);
        this.avatar.setAvatarStroke(1.0f, false);
        this.avatar.setAvatarShadow(Utils.dpToPxInt(getContext(), 2.0f), Color.parseColor("#38000000"), false);
        this.avatar.setUser(sharedAlbum.author);
        ViewUtils.show(this.authorLayout, !sharedAlbum.isDefaultAlbum());
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void setAlpha(View view, int i10, int i11) {
        int top = view.getTop();
        if (top <= i10) {
            view.setAlpha(0.0f);
            view.setVisibility(4);
        } else if (top >= i11) {
            view.setAlpha(1.0f);
            view.setVisibility(0);
        } else {
            view.setAlpha(1.0f - (((i11 - top) * 1.0f) / (i11 - i10)));
            view.setVisibility(0);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.cover = (NVImageView) findViewById(R.id.cover);
        this.title = (TextView) findViewById(R.id.title);
        this.title2 = (TextView) findViewById(R.id.title2);
        this.photosCount = (TextView) findViewById(R.id.photo_count);
        this.votesCount = (TextView) findViewById(R.id.vote_count);
        this.description = (TextView) findViewById(R.id.content);
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur);
        this.nicknameView = (NicknameView) findViewById(R.id.nickname);
        this.avatar = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.lock = findViewById(R.id.locked);
        this.gradient = findViewById(R.id.cover_gradient);
        View viewFindViewById = findViewById(R.id.author_layout);
        this.authorLayout = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        int actionBarOverlaySize = ((NVActivity) getContext()).getActionBarOverlaySize();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.title2.getLayoutParams();
        marginLayoutParams.height = actionBarOverlaySize;
        marginLayoutParams.topMargin = statusBarOverlaySize;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        float f;
        int i14;
        super.onLayout(z6, i10, i11, i12, i13);
        super.onLayout(z6, i10, i11, i12, i13);
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        int actionBarOverlaySize = ((NVActivity) getContext()).getActionBarOverlaySize();
        int i15 = statusBarOverlaySize + actionBarOverlaySize;
        int i16 = i15 / 2;
        int i17 = i15 + i16;
        int childCount = getChildCount();
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            if ("fade".equals(childAt.getTag())) {
                setAlpha(childAt, i16, i17);
            }
        }
        int height = getHeight();
        if (height > i17) {
            this.title2.setVisibility(4);
            this.title2.setAlpha(0.0f);
        } else if (height <= i15) {
            this.title2.setVisibility(4);
            this.title2.setAlpha(1.0f);
        } else {
            this.title2.setVisibility(4);
            this.title2.setAlpha(((i17 - height) * 1.0f) / (i17 - i15));
        }
        int i19 = this.height1 / 2;
        if (height < i19) {
            f = (((height - statusBarOverlaySize) - actionBarOverlaySize) * 1.0f) / ((i19 - statusBarOverlaySize) - actionBarOverlaySize);
        } else {
            f = 1.0f;
        }
        if (f < 0.0f) {
            f = 0.0f;
        }
        RealtimeBlurView realtimeBlurView = this.blurView;
        if (f >= 1.0f) {
            i14 = 4;
        } else {
            i14 = 0;
        }
        realtimeBlurView.setVisibility(i14);
        this.blurView.setOverlayColor(1711276032);
        this.blurView.setAlpha(1.0f - f);
        this.gradient.setAlpha(f);
        if (f == 0.0f) {
            int childCount2 = getChildCount();
            for (int i20 = 0; i20 < childCount2; i20++) {
                View childAt2 = getChildAt(i20);
                if ("fade".equals(childAt2.getTag())) {
                    childAt2.setAlpha(0.0f);
                    childAt2.setVisibility(4);
                }
            }
        }
        SharedAlbum sharedAlbum = this.sharedAlbum;
        if (sharedAlbum == null || TextUtils.isEmpty(sharedAlbum.description)) {
            this.description.setVisibility(8);
        }
    }
}
