package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.R;
import androidx.fragment.app.strictmode.FragmentStrictMode;

/* JADX INFO: loaded from: classes2.dex */
class FragmentLayoutInflaterFactory implements LayoutInflater.Factory2 {
    private static final String TAG = "FragmentManager";
    final FragmentManager mFragmentManager;

    @Override // android.view.LayoutInflater.Factory
    @Nullable
    public View onCreateView(@NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        final FragmentStateManager fragmentStateManagerZ;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.mFragmentManager);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(R.styleable.Fragment_android_name);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Fragment_android_id, -1);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.Fragment_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue == null || !FragmentFactory.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment fragmentL0 = resourceId != -1 ? this.mFragmentManager.l0(resourceId) : null;
        if (fragmentL0 == null && string != null) {
            fragmentL0 = this.mFragmentManager.m0(string);
        }
        if (fragmentL0 == null && id != -1) {
            fragmentL0 = this.mFragmentManager.l0(id);
        }
        if (fragmentL0 == null) {
            fragmentL0 = this.mFragmentManager.z0().a(context.getClassLoader(), attributeValue);
            fragmentL0.mFromLayout = true;
            fragmentL0.mFragmentId = resourceId != 0 ? resourceId : id;
            fragmentL0.mContainerId = id;
            fragmentL0.mTag = string;
            fragmentL0.mInLayout = true;
            FragmentManager fragmentManager = this.mFragmentManager;
            fragmentL0.mFragmentManager = fragmentManager;
            fragmentL0.mHost = fragmentManager.C0();
            fragmentL0.onInflate(this.mFragmentManager.C0().f(), attributeSet, fragmentL0.mSavedFragmentState);
            fragmentStateManagerZ = this.mFragmentManager.j(fragmentL0);
            if (FragmentManager.P0(2)) {
                Log.v("FragmentManager", "Fragment " + fragmentL0 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        } else {
            if (fragmentL0.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            fragmentL0.mInLayout = true;
            FragmentManager fragmentManager2 = this.mFragmentManager;
            fragmentL0.mFragmentManager = fragmentManager2;
            fragmentL0.mHost = fragmentManager2.C0();
            fragmentL0.onInflate(this.mFragmentManager.C0().f(), attributeSet, fragmentL0.mSavedFragmentState);
            fragmentStateManagerZ = this.mFragmentManager.z(fragmentL0);
            if (FragmentManager.P0(2)) {
                Log.v("FragmentManager", "Retained Fragment " + fragmentL0 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
            }
        }
        ViewGroup viewGroup = (ViewGroup) view;
        FragmentStrictMode.i(fragmentL0, viewGroup);
        fragmentL0.mContainer = viewGroup;
        fragmentStateManagerZ.m();
        fragmentStateManagerZ.j();
        View view2 = fragmentL0.mView;
        if (view2 == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragmentL0.mView.getTag() == null) {
            fragmentL0.mView.setTag(string);
        }
        fragmentL0.mView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentLayoutInflaterFactory.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view3) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view3) {
                Fragment fragmentK = fragmentStateManagerZ.k();
                fragmentStateManagerZ.m();
                SpecialEffectsController.n((ViewGroup) fragmentK.mView.getParent(), FragmentLayoutInflaterFactory.this.mFragmentManager).j();
            }
        });
        return fragmentL0.mView;
    }

    FragmentLayoutInflaterFactory(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }
}
