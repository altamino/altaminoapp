package com.narvii.app;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.design.widget.BottomSheetBehavior;
import android.view.View;
import com.narvii.amino.CommunityJoinBarFragment;
import com.narvii.amino.mastes.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Community;
import com.narvii.widget.RoundFrameLayout;

/* loaded from: classes2.dex */
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

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        CommunityJoinBarFragment communityJoinBarFragmentAttachTo;
        super.onCreate(bundle);
        getActionBar().hide();
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setContentView(R.layout.layout_activity_swipeable);
        RoundFrameLayout roundFrameLayout = (RoundFrameLayout) findViewById(R.id.swipeable);
        float dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.swipe_layout_radius);
        roundFrameLayout.setCornerRadius(new float[]{dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, 0.0f, 0.0f, 0.0f, 0.0f});
        this.bottomSheetBehavior = BottomSheetBehavior.from(roundFrameLayout);
        this.bottomSheetBehavior.setPeekHeight(0);
        this.bottomSheetBehavior.setState(3);
        this.bottomSheetBehavior.setBottomSheetCallback(new BottomSheetBehavior.BottomSheetCallback() { // from class: com.narvii.app.SwipeableActivity.1
            @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
            public void onSlide(View view, float f) {
            }

            @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
            public void onStateChanged(View view, int i) {
                if (i == 4) {
                    SwipeableActivity.this.finish();
                    SwipeableActivity.this.overridePendingTransition(0, 0);
                }
            }
        });
        findViewById(R.id.close).setOnClickListener(this);
        findViewById(R.id.activity_swipeable_root).setOnClickListener(this);
        if (!isGlobalInteractionScope() || getBooleanParam("preview") || (communityJoinBarFragmentAttachTo = CommunityJoinBarFragment.attachTo(getSupportFragmentManager(), getStringParam(CommunityJoinBarFragment.JOIN_BAR_COMMUNITY))) == null) {
            return;
        }
        communityJoinBarFragmentAttachTo.setOnCommunityActionClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.activity_swipeable_root || id == R.id.close) {
            finish();
            overridePendingTransition(0, R.anim.activity_push_bottom_out);
        }
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(0, R.anim.activity_push_bottom_out);
    }

    @Override // com.narvii.amino.CommunityJoinBarFragment.OnCommunityActionClickListener
    public void onJoinCommunity(Community community) {
        LogEvent.clickBuilder(getCommunityActionBarLogContext(), ActSemantic.aminoJoin).area("CommunityBar").send();
    }

    @Override // com.narvii.amino.CommunityJoinBarFragment.OnCommunityActionClickListener
    public void onEnterCommunity(Community community) {
        LogEvent.clickBuilder(getCommunityActionBarLogContext(), ActSemantic.aminoEnter).area("CommunityBar").send();
    }

    private NVContext getCommunityActionBarLogContext() {
        if (getRootFragment() instanceof NVContext) {
            return (NVContext) getRootFragment();
        }
        return null;
    }
}
