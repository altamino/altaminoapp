package com.narvii.community;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.narvii.app.NVContext;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.services.EnterCommunityHelper;
import com.narvii.util.Callback;
import com.narvii.util.SplashUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SmoothProgressBar;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CommunityLaunchHelperWithIcon extends CommunityLaunchHelper {
    Community community;
    MyCommunityListService communityListService;
    NVImageView imageView;
    Activity launchActivity;
    SmoothProgressBar progressBar;

    public CommunityLaunchHelperWithIcon(NVContext nVContext, Activity activity) {
        this(nVContext, null, activity);
    }

    public CommunityLaunchHelperWithIcon(NVContext nVContext, String str, Activity activity) {
        super(nVContext, str);
        this.launchImageTimeout = 0L;
        this.launchActivity = activity;
        this.communityListService = (MyCommunityListService) nVContext.getService("myCommunityList");
    }

    private void launchCid(int i10, Drawable drawable) {
        User user;
        String str;
        List<Community> list = this.communityListService.list();
        Community community = null;
        if (list != null) {
            for (Community community2 : list) {
                if (community2.id == i10) {
                    User userProfile = this.communityListService.getUserProfile(i10);
                    String userInfoTimestamp = this.communityListService.getUserInfoTimestamp(i10);
                    if (userInfoTimestamp == null || userProfile == null) {
                        str = userInfoTimestamp;
                        user = null;
                    } else {
                        community = community2;
                        str = userInfoTimestamp;
                        user = userProfile;
                    }
                }
            }
            user = null;
            str = null;
        } else {
            user = null;
            str = null;
        }
        launch(i10, community, str, user, str, this.communityListService.getReminder(i10), this.communityListService.getReminderTimestamp(i10), false, 2, drawable);
    }

    public void launchCommunity(Community community, NVImageView nVImageView, SmoothProgressBar smoothProgressBar) {
        this.community = community;
        this.imageView = nVImageView;
        this.progressBar = smoothProgressBar;
        if (smoothProgressBar != null) {
            smoothProgressBar.setVisibility(0);
            smoothProgressBar.setMax(100);
            smoothProgressBar.setProgress(0);
        }
        launchCid(community.id, nVImageView.getDrawable());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.community.CommunityLaunchHelper
    public void onFinish() {
        Drawable drawable;
        if (this.community == null) {
            return;
        }
        NVImageView nVImageView = this.imageView;
        if (nVImageView == null || (drawable = this.launchImageDrawable) == null) {
            super.onFinish();
        } else {
            SplashUtils.splash(this.launchActivity, nVImageView, drawable, new Callback<Boolean>() { // from class: com.narvii.community.CommunityLaunchHelperWithIcon.1
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool.booleanValue()) {
                        EnterCommunityHelper.SOURCE.set(CommunityLaunchHelperWithIcon.this.source);
                        CommunityLaunchHelperWithIcon.super.onFinish();
                    }
                }
            });
        }
    }

    @Override // com.narvii.community.CommunityLaunchHelper
    protected void onProgress(int i10, float f) {
        SmoothProgressBar smoothProgressBar = this.progressBar;
        if (smoothProgressBar != null) {
            smoothProgressBar.setProgress((int) (f * 100.0f));
        }
    }

    @Override // com.narvii.community.CommunityLaunchHelper
    public void cancel() {
        super.cancel();
        this.community = null;
        this.imageView = null;
        SmoothProgressBar smoothProgressBar = this.progressBar;
        if (smoothProgressBar != null) {
            smoothProgressBar.setProgress(0);
            this.progressBar.setVisibility(4);
        }
        this.progressBar = null;
        Activity activity = this.launchActivity;
        if (activity != null) {
            SplashUtils.cancelSplash(activity);
        }
        this.launchActivity = null;
    }
}
