package com.narvii.announcement;

import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.FullsizeImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;

/* loaded from: classes2.dex */
public class AnnouncementCoverDialog extends NVDialog implements View.OnClickListener {
    Blog blog;
    Media media;
    NVContext nvContext;
    PreferencesHelper sharedPreferencesHelper;

    public AnnouncementCoverDialog(NVContext nVContext, Blog blog, final NVImageView.OnImageChangedListener onImageChangedListener) {
        super(nVContext, R.style.CustomDialogWithAnimation);
        if (blog == null) {
            return;
        }
        setContentView(R.layout.dialog_announcement_layout);
        this.nvContext = nVContext;
        this.blog = blog;
        this.media = blog.getExtraCoverMedia();
        StatusBarUtils.addTranslucentFlags(getWindow());
        FullsizeImageView fullsizeImageView = (FullsizeImageView) findViewById(R.id.cover);
        fullsizeImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.announcement.AnnouncementCoverDialog.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                NVImageView.OnImageChangedListener onImageChangedListener2 = onImageChangedListener;
                if (onImageChangedListener2 != null) {
                    onImageChangedListener2.onImageChanged(nVImageView, i, media);
                }
            }
        });
        fullsizeImageView.setImageMedia(this.media);
        fullsizeImageView.setOnClickListener(this);
        TintButton tintButton = (TintButton) findViewById(R.id.close);
        tintButton.setTintColor(-1);
        tintButton.setOnClickListener(this);
        findViewById(R.id.ann_indicator).setOnClickListener(this);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() throws Resources.NotFoundException {
        Media media;
        super.show();
        if (this.blog == null || (media = this.media) == null || media.url == null) {
            dismiss();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(300L);
        View viewFindViewById = findViewById(R.id.bg);
        if (viewFindViewById != null) {
            viewFindViewById.startAnimation(alphaAnimation);
        }
        final View viewFindViewById2 = findViewById(R.id.main_layout);
        if (viewFindViewById2 != null) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.dialog_in_popup_bounce);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.announcement.AnnouncementCoverDialog.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    viewFindViewById2.startAnimation(AnimationUtils.loadAnimation(AnnouncementCoverDialog.this.getContext(), R.anim.dialog_in_popup_bounce_2));
                }
            });
            viewFindViewById2.startAnimation(animationLoadAnimation);
        }
        this.sharedPreferencesHelper = new PreferencesHelper(this.nvContext);
        this.sharedPreferencesHelper.saveLastAnnouncementShownId(this.blog.blogId);
        this.sharedPreferencesHelper.saveLastAnnouncementToastTime(this.blog.createdTime.getTime());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.ann_indicator) {
            if (id == R.id.close) {
                dismiss();
                return;
            } else if (id != R.id.cover) {
                return;
            }
        }
        dismiss();
        Intent intent = FragmentWrapperActivity.intent(AnnouncementListFragment.class);
        intent.putExtra("Source", "Toast");
        intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(this.blog));
        getContext().startActivity(intent);
    }
}
