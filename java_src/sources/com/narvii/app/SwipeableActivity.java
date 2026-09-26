package com.narvii.app;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.narvii.amino.CommunityJoinBarFragment;
import com.narvii.amino.master.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Community;
import com.narvii.widget.RoundFrameLayout;

/* JADX INFO: loaded from: classes6.dex */
public class SwipeableActivity extends FragmentWrapperActivity implements ISwipeableActivity, View.OnClickListener, CommunityJoinBarFragment.OnCommunityActionClickListener {
    BottomSheetBehavior bottomSheetBehavior;

    @Override // com.narvii.app.NVActivity
    public int getActionBarOverlaySize() {
        return 0;
    }

    @Override // com.narvii.app.FragmentWrapperActivity
    protected int getFragmentLayoutId() {
        return R.id.fragment_container;
    }

    @Override // com.narvii.app.NVActivity
    public int getStatusBarOverlaySize() {
        return 0;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity
    public boolean hasDrawer() {
        return false;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity
    public boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public boolean isPagebackgroundEnabled() {
        return false;
    }

    private NVContext getCommunityActionBarLogContext() {
        if (getRootFragment() instanceof NVContext) {
            return (NVContext) getRootFragment();
        }
        return null;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(0, R.anim.activity_push_bottom_out);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.activity_swipeable_root || id == R.id.close) {
            finish();
            overridePendingTransition(0, R.anim.activity_push_bottom_out);
        }
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        CommunityJoinBarFragment communityJoinBarFragmentAttachTo;
        super.onCreate(bundle);
        getActionBar().hide();
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setShouldInflateAd(false);
        setContentView(R.layout.layout_activity_swipeable);
        RoundFrameLayout roundFrameLayout = (RoundFrameLayout) findViewById(R.id.swipeable);
        float dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.swipe_layout_radius);
        roundFrameLayout.setCornerRadius(new float[]{dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, 0.0f, 0.0f, 0.0f, 0.0f});
        BottomSheetBehavior bottomSheetBehaviorA = BottomSheetBehavior.A(roundFrameLayout);
        this.bottomSheetBehavior = bottomSheetBehaviorA;
        bottomSheetBehaviorA.V(0);
        this.bottomSheetBehavior.Z(3);
        this.bottomSheetBehavior.M(new BottomSheetBehavior.f() { // from class: com.narvii.app.SwipeableActivity.1
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
            public void onSlide(@NonNull View view, float f) {
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
            public void onStateChanged(@NonNull View view, int i10) {
                if (i10 == 4) {
                    SwipeableActivity.this.finish();
                    SwipeableActivity.this.overridePendingTransition(0, 0);
                }
            }
        });
        findViewById(R.id.close).setOnClickListener(this);
        findViewById(R.id.activity_swipeable_root).setOnClickListener(this);
        if (isGlobalInteractionScope() && !getBooleanParam("preview") && (communityJoinBarFragmentAttachTo = CommunityJoinBarFragment.attachTo(getSupportFragmentManager(), getStringParam(CommunityJoinBarFragment.JOIN_BAR_COMMUNITY))) != null) {
            communityJoinBarFragmentAttachTo.setOnCommunityActionClickListener(this);
        }
    }

    @Override // com.narvii.amino.CommunityJoinBarFragment.OnCommunityActionClickListener
    public void onEnterCommunity(Community community) {
        LogEvent.clickBuilder(getCommunityActionBarLogContext(), ActSemantic.aminoEnter).area("CommunityBar").send();
    }

    @Override // com.narvii.amino.CommunityJoinBarFragment.OnCommunityActionClickListener
    public void onJoinCommunity(Community community) {
        LogEvent.clickBuilder(getCommunityActionBarLogContext(), ActSemantic.aminoJoin).area("CommunityBar").send();
    }
}
