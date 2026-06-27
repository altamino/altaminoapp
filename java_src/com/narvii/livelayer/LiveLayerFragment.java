package com.narvii.livelayer;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SwipeableLayout;

/* loaded from: classes3.dex */
public class LiveLayerFragment extends NVFragment {
    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_live_layer, viewGroup, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            r7 = this;
            super.onCreate(r8)
            android.support.v4.app.FragmentActivity r0 = r7.getActivity()
            android.view.Window r0 = r0.getWindow()
            android.graphics.drawable.ColorDrawable r1 = new android.graphics.drawable.ColorDrawable
            r2 = 0
            r1.<init>(r2)
            r0.setBackgroundDrawable(r1)
            if (r8 != 0) goto L74
            java.lang.String r8 = "targetTopic"
            java.lang.String r8 = r7.getStringParam(r8)
            java.lang.String r0 = "users-chatting-public"
            boolean r0 = com.narvii.util.Utils.isEqualsNotNull(r8, r0)
            r1 = 1
            if (r0 == 0) goto L2d
            com.narvii.livelayer.detailview.LiveLayerDetailChattingFragment r8 = new com.narvii.livelayer.detailview.LiveLayerDetailChattingFragment
            r8.<init>()
        L2a:
            r0 = r8
            r8 = 0
            goto L42
        L2d:
            java.lang.String r0 = "users-live-chatting-public"
            boolean r8 = com.narvii.util.Utils.isEqualsNotNull(r8, r0)
            if (r8 == 0) goto L3b
            com.narvii.livelayer.detailview.LiveLayerDetailLiveChattingFragment r8 = new com.narvii.livelayer.detailview.LiveLayerDetailLiveChattingFragment
            r8.<init>()
            goto L2a
        L3b:
            com.narvii.livelayer.LiveLayerMainFragment r8 = new com.narvii.livelayer.LiveLayerMainFragment
            r8.<init>()
            r0 = r8
            r8 = 1
        L42:
            java.lang.String r3 = "Source"
            if (r8 != 0) goto L62
            android.os.Bundle r4 = new android.os.Bundle
            r4.<init>()
            java.lang.String r5 = r7.getStringParam(r3)
            if (r5 == 0) goto L5a
            java.lang.String r6 = "Speed Dial"
            boolean r6 = r5.contains(r6)
            if (r6 == 0) goto L5a
            goto L5c
        L5a:
            java.lang.String r5 = "Live Layer"
        L5c:
            r4.putString(r3, r5)
            r0.setArguments(r4)
        L62:
            android.support.v4.app.FragmentManager r4 = r7.getFragmentManager()
            android.support.v4.app.FragmentTransaction r4 = r4.beginTransaction()
            r5 = 2131297466(0x7f0904ba, float:1.8212878E38)
            android.support.v4.app.FragmentTransaction r0 = r4.add(r5, r0)
            r0.commit()
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.livelayer.LiveLayerFragment.onCreate(android.os.Bundle):void");
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
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
        int dimensionPixelSize = booleanParam ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.swipe_layout_radius);
        swipeableLayout.setRadius(dimensionPixelSize, dimensionPixelSize, 0, 0);
        backgroundBlurWithTopRadiusLayout.setRadius(dimensionPixelSize, dimensionPixelSize, 0, 0);
        ((ViewGroup.MarginLayoutParams) swipeableLayout.getLayoutParams()).topMargin = booleanParam ? 0 : (getActionBarOverlaySize() / 2) + getStatusBarOverlaySize();
        ((ViewGroup.MarginLayoutParams) backgroundBlurWithTopRadiusLayout.getLayoutParams()).topMargin = booleanParam ? 0 : (getActionBarOverlaySize() / 2) + getStatusBarOverlaySize();
        final View backgroundMask = getActivity() instanceof LiveLayerActivity ? ((LiveLayerActivity) getActivity()).getBackgroundMask() : null;
        swipeableLayout.setSwipeListener(new SwipeableLayout.SwipeListener() { // from class: com.narvii.livelayer.LiveLayerFragment.1
            @Override // com.narvii.widget.SwipeableLayout.SwipeListener
            public void onLayoutSwiped() {
                LiveLayerFragment.this.finish();
            }

            @Override // com.narvii.widget.SwipeableLayout.SwipeListener
            public void onLayoutMoved(int i, int i2, int i3, int i4) {
                View view2 = backgroundMask;
                if (view2 != null) {
                    view2.setAlpha(1.0f - ((Math.max(0, i4 - i3) * 1.0f) / swipeableLayout.getHeight()));
                }
                backgroundBlurWithTopRadiusLayout.setTargetHeight((swipeableLayout.getHeight() + i3) - i4);
                backgroundBlurWithTopRadiusLayout.requestLayout();
            }
        });
        view.findViewById(R.id.click_remove_mask).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.livelayer.LiveLayerFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LiveLayerFragment.this.finish();
            }
        });
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }
}
