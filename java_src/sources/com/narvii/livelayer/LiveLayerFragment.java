package com.narvii.livelayer;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.amino.speeddial.mode.LiveCategory;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailChattingFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailLiveChattingFragment;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SwipeableLayout;

/* JADX INFO: loaded from: classes5.dex */
public class LiveLayerFragment extends NVFragment {
    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        finish();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0044  */
    /* JADX WARN: Code duplicated, block: B:19:0x0058  */
    /* JADX WARN: Code duplicated, block: B:23:0x0074  */
    /* JADX WARN: Code duplicated, block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        Fragment liveLayerMainFragment;
        boolean z6;
        String stringParam;
        super.onCreate(bundle);
        getActivity().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        if (bundle == null) {
            String stringParam2 = getStringParam("targetTopic");
            if (Utils.isEqualsNotNull(stringParam2, LiveCategory.LIVE_CATEGORY_TOPIC_CHAT)) {
                liveLayerMainFragment = new LiveLayerDetailChattingFragment();
            } else {
                if (Utils.isEqualsNotNull(stringParam2, LiveCategory.LIVE_CATEGORY_TYPE_LIVE_CHATTING)) {
                    liveLayerMainFragment = new LiveLayerDetailLiveChattingFragment();
                } else {
                    liveLayerMainFragment = new LiveLayerMainFragment();
                    z6 = true;
                }
                if (!z6) {
                    Bundle bundle2 = new Bundle();
                    stringParam = getStringParam(ExternalPostPreviewFragment.SOURCE);
                    if (stringParam != null || !stringParam.contains("Speed Dial")) {
                        stringParam = "Live Layer";
                    }
                    bundle2.putString(ExternalPostPreviewFragment.SOURCE, stringParam);
                    liveLayerMainFragment.setArguments(bundle2);
                }
                getFragmentManager().q().b(R.id.frame, liveLayerMainFragment).j();
                if (z6) {
                    ((StatisticsService) getService("statistics")).event("Online Now Tapped").param(ExternalPostPreviewFragment.SOURCE, getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Online Now Tapped Total");
                    ((LoggingService) getService("logging")).lambda$logEvent$0("LiveLayerOpened", "eventSource", "GlobalLiveLayerWidget");
                }
            }
            z6 = false;
            if (!z6) {
                Bundle bundle3 = new Bundle();
                stringParam = getStringParam(ExternalPostPreviewFragment.SOURCE);
                if (stringParam != null) {
                    stringParam = "Live Layer";
                } else {
                    stringParam = "Live Layer";
                }
                bundle3.putString(ExternalPostPreviewFragment.SOURCE, stringParam);
                liveLayerMainFragment.setArguments(bundle3);
            }
            getFragmentManager().q().b(R.id.frame, liveLayerMainFragment).j();
            if (z6) {
                ((StatisticsService) getService("statistics")).event("Online Now Tapped").param(ExternalPostPreviewFragment.SOURCE, getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Online Now Tapped Total");
                ((LoggingService) getService("logging")).lambda$logEvent$0("LiveLayerOpened", "eventSource", "GlobalLiveLayerWidget");
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_live_layer, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        setScreenName("community_online");
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        int dimensionPixelSize;
        int actionBarOverlaySize;
        final View backgroundMask;
        super.onViewCreated(view, bundle);
        ConfigService configService = (ConfigService) getService("config");
        ThemePackService themePackService = (ThemePackService) getService("themePack");
        int communityId = configService.getCommunityId();
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.theme_background);
        Drawable dynamicBackground = BackgroundHelper.getDynamicBackground();
        if (dynamicBackground == null) {
            dynamicBackground = themePackService.getDrawable(communityId, ThemePackService.ThemeObject.BACKGROUND, Utils.getScreenWidth(getContext()), Utils.getScreenHeight(getContext()));
        }
        if (dynamicBackground != null) {
            nVImageView.setImageDrawable(dynamicBackground);
        } else {
            nVImageView.setImageDrawable(new ColorDrawable(themePackService.getThemeColor(communityId)));
        }
        ((FrameLayout.LayoutParams) nVImageView.getLayoutParams()).height = getContext().getResources().getDisplayMetrics().heightPixels;
        BackgroundHelper.saveWithDrawable(dynamicBackground);
        final SwipeableLayout swipeableLayout = (SwipeableLayout) view.findViewById(R.id.frame);
        final BackgroundBlurWithTopRadiusLayout backgroundBlurWithTopRadiusLayout = (BackgroundBlurWithTopRadiusLayout) view.findViewById(R.id.theme_background_wrapper);
        swipeableLayout.setAllowDirection(2);
        boolean booleanParam = getBooleanParam("fullScreenMode");
        int actionBarOverlaySize2 = 0;
        if (booleanParam) {
            dimensionPixelSize = 0;
        } else {
            dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.swipe_layout_radius);
        }
        swipeableLayout.setRadius(dimensionPixelSize, dimensionPixelSize, 0, 0);
        backgroundBlurWithTopRadiusLayout.setRadius(dimensionPixelSize, dimensionPixelSize, 0, 0);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) swipeableLayout.getLayoutParams();
        if (booleanParam) {
            actionBarOverlaySize = 0;
        } else {
            actionBarOverlaySize = (getActionBarOverlaySize() / 2) + getStatusBarOverlaySize();
        }
        marginLayoutParams.topMargin = actionBarOverlaySize;
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) backgroundBlurWithTopRadiusLayout.getLayoutParams();
        if (!booleanParam) {
            actionBarOverlaySize2 = (getActionBarOverlaySize() / 2) + getStatusBarOverlaySize();
        }
        marginLayoutParams2.topMargin = actionBarOverlaySize2;
        if (getActivity() instanceof LiveLayerActivity) {
            backgroundMask = ((LiveLayerActivity) getActivity()).getBackgroundMask();
        } else {
            backgroundMask = null;
        }
        swipeableLayout.setSwipeListener(new SwipeableLayout.SwipeListener() { // from class: com.narvii.livelayer.LiveLayerFragment.1
            @Override // com.narvii.widget.SwipeableLayout.SwipeListener
            public void onLayoutMoved(int i10, int i11, int i12, int i13) {
                View view2 = backgroundMask;
                if (view2 != null) {
                    view2.setAlpha(1.0f - ((Math.max(0, i13 - i12) * 1.0f) / swipeableLayout.getHeight()));
                }
                backgroundBlurWithTopRadiusLayout.setTargetHeight((swipeableLayout.getHeight() + i12) - i13);
                backgroundBlurWithTopRadiusLayout.requestLayout();
            }

            @Override // com.narvii.widget.SwipeableLayout.SwipeListener
            public void onLayoutSwiped() {
                LiveLayerFragment.this.finish();
            }
        });
        view.findViewById(R.id.click_remove_mask).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.livelayer.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2293a.lambda$onViewCreated$0(view2);
            }
        });
    }
}
