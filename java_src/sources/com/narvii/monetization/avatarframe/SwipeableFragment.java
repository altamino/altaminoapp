package com.narvii.monetization.avatarframe;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.list.NVListFragment;
import com.narvii.util.Log;
import com.narvii.widget.NVListView;
import com.narvii.widget.SwipeableLayout;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SwipeableFragment extends NVListFragment {
    protected SwipeableLayout swipeableLayout;
    protected String tag;

    public static Fragment show(NVFragment nVFragment, int i10, String str, Class<? extends SwipeableFragment> cls) {
        return showInternal(nVFragment.getChildFragmentManager(), i10, str, cls, null);
    }

    protected abstract int getContentView();

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
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

    public void dismiss() {
        SwipeableLayout swipeableLayout = this.swipeableLayout;
        if (swipeableLayout != null) {
            swipeableLayout.dismiss(2);
        } else {
            remove();
        }
    }

    public static View createDefaultContainer(Activity activity, int i10) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(android.R.id.content);
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        }
        View viewFindViewById = viewGroup.findViewById(i10);
        if (viewFindViewById != null && viewGroup.indexOfChild(viewFindViewById) + 1 != viewGroup.getChildCount()) {
            viewGroup.removeView(viewFindViewById);
            viewFindViewById = null;
        }
        if (viewFindViewById == null) {
            FrameLayout frameLayout = new FrameLayout(activity);
            frameLayout.setId(i10);
            viewGroup.addView(frameLayout);
            return frameLayout;
        }
        return viewFindViewById;
    }

    protected static SwipeableFragment createFragment(Class<? extends SwipeableFragment> cls) {
        try {
            return cls.newInstance();
        } catch (Exception e) {
            Log.e("fail to create SwipeableFragment", e);
            return null;
        }
    }

    public static Fragment show(NVActivity nVActivity, int i10, String str, Class<? extends SwipeableFragment> cls) {
        return showInternal(nVActivity.getSupportFragmentManager(), i10, str, cls, null);
    }

    private static Fragment showInternal(FragmentManager fragmentManager, int i10, String str, Class<? extends SwipeableFragment> cls, Bundle bundle) {
        Fragment fragmentM0 = fragmentManager.m0(str);
        Fragment fragment = fragmentM0;
        if (fragmentM0 == null) {
            SwipeableFragment swipeableFragmentCreateFragment = createFragment(cls);
            if (swipeableFragmentCreateFragment != null) {
                swipeableFragmentCreateFragment.tag = str;
                if (bundle != null) {
                    swipeableFragmentCreateFragment.setArguments(bundle);
                }
            }
            fragmentManager.q().z(R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out, R.anim.activity_push_bottom_in, R.anim.activity_push_bottom_out).c(i10, swipeableFragmentCreateFragment, str).h(str).k();
            fragment = swipeableFragmentCreateFragment;
        }
        return fragment;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(getContentView(), viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        SwipeableLayout swipeableLayout = (SwipeableLayout) view.findViewById(getSwipeableLayoutId());
        this.swipeableLayout = swipeableLayout;
        if (swipeableLayout != null) {
            swipeableLayout.bindListView((NVListView) getListView());
            this.swipeableLayout.setAllowDirection(2);
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.swipe_layout_radius);
            this.swipeableLayout.setRadius(dimensionPixelSize, dimensionPixelSize, 0, 0);
            this.swipeableLayout.setSwipeListener(new SwipeableLayout.SwipeListener() { // from class: com.narvii.monetization.avatarframe.SwipeableFragment.1
                @Override // com.narvii.widget.SwipeableLayout.SwipeListener
                public void onLayoutMoved(int i10, int i11, int i12, int i13) {
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

    public void remove() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            fragmentManager.q().t(this).k();
            fragmentManager.l1(this.tag, 1);
        }
    }

    public static Fragment show(NVActivity nVActivity, int i10, String str, Class<? extends SwipeableFragment> cls, Bundle bundle) {
        return showInternal(nVActivity.getSupportFragmentManager(), i10, str, cls, bundle);
    }
}
