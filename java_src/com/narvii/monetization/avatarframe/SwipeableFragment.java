package com.narvii.monetization.avatarframe;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.list.NVListFragment;
import com.narvii.util.Log;
import com.narvii.widget.NVListView;
import com.narvii.widget.SwipeableLayout;

/* loaded from: classes3.dex */
public abstract class SwipeableFragment extends NVListFragment {
    protected SwipeableLayout swipeableLayout;
    protected String tag;

    protected abstract int getContentView();

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    protected int getDismissMaskId() {
        return R.id.dismiss_mask;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    protected int getSwipeableLayoutId() {
        return R.id.frame;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public static Fragment show(NVFragment nVFragment, int i, String str, Class<? extends SwipeableFragment> cls) {
        return showInternal(nVFragment.getChildFragmentManager(), i, str, cls, null);
    }

    public static Fragment show(NVActivity nVActivity, int i, String str, Class<? extends SwipeableFragment> cls) {
        return showInternal(nVActivity.getSupportFragmentManager(), i, str, cls, null);
    }

    public static Fragment show(NVActivity nVActivity, int i, String str, Class<? extends SwipeableFragment> cls, Bundle bundle) {
        return showInternal(nVActivity.getSupportFragmentManager(), i, str, cls, bundle);
    }

    private static Fragment showInternal(FragmentManager fragmentManager, int i, String str, Class<? extends SwipeableFragment> cls, Bundle bundle) {
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(str);
        Fragment fragment = fragmentFindFragmentByTag;
        if (fragmentFindFragmentByTag == null) {
            SwipeableFragment swipeableFragmentCreateFragment = createFragment(cls);
            if (swipeableFragmentCreateFragment != null) {
                swipeableFragmentCreateFragment.tag = str;
                if (bundle != null) {
                    swipeableFragmentCreateFragment.setArguments(bundle);
                }
            }
            fragmentManager.beginTransaction().setCustomAnimations(R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out, R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out).add(i, swipeableFragmentCreateFragment, str).addToBackStack(str).commitAllowingStateLoss();
            fragment = swipeableFragmentCreateFragment;
        }
        return fragment;
    }

    public static View createDefaultContainer(Activity activity, int i) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(android.R.id.content);
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        }
        View viewFindViewById = viewGroup.findViewById(i);
        if (viewFindViewById != null && viewGroup.indexOfChild(viewFindViewById) + 1 != viewGroup.getChildCount()) {
            viewGroup.removeView(viewFindViewById);
            viewFindViewById = null;
        }
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setId(i);
        viewGroup.addView(frameLayout);
        return frameLayout;
    }

    protected static SwipeableFragment createFragment(Class<? extends SwipeableFragment> cls) {
        try {
            return cls.newInstance();
        } catch (Exception e) {
            Log.e("fail to create SwipeableFragment", e);
            return null;
        }
    }

    public void remove() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            fragmentManager.beginTransaction().remove(this).commitAllowingStateLoss();
            fragmentManager.popBackStack(this.tag, 1);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(getContentView(), viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.swipeableLayout = (SwipeableLayout) view.findViewById(getSwipeableLayoutId());
        SwipeableLayout swipeableLayout = this.swipeableLayout;
        if (swipeableLayout != null) {
            swipeableLayout.bindListView((NVListView) getListView());
            this.swipeableLayout.setAllowDirection(2);
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.swipe_layout_radius);
            this.swipeableLayout.setRadius(dimensionPixelSize, dimensionPixelSize, 0, 0);
            this.swipeableLayout.setSwipeListener(new SwipeableLayout.SwipeListener() { // from class: com.narvii.monetization.avatarframe.SwipeableFragment.1
                @Override // com.narvii.widget.SwipeableLayout.SwipeListener
                public void onLayoutMoved(int i, int i2, int i3, int i4) {
                }

                @Override // com.narvii.widget.SwipeableLayout.SwipeListener
                public void onLayoutSwiped() {
                    SwipeableFragment.this.remove();
                }
            });
        }
        View viewFindViewById = view.findViewById(R.id.minimize_area);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.SwipeableFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    SwipeableFragment.this.dismiss();
                }
            });
        }
        View viewFindViewById2 = view.findViewById(getDismissMaskId());
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.SwipeableFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    SwipeableFragment.this.dismiss();
                }
            });
        }
    }

    public void dismiss() {
        SwipeableLayout swipeableLayout = this.swipeableLayout;
        if (swipeableLayout != null) {
            swipeableLayout.dismiss(2);
        } else {
            remove();
        }
    }
}
