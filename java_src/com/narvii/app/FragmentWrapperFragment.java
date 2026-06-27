package com.narvii.app;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.lib.R;
import com.narvii.util.Log;

/* loaded from: classes2.dex */
public class FragmentWrapperFragment extends NVFragment {
    private static final int REQUEST_WRAP = 63;
    private boolean loaded;
    private View loadingView;

    public boolean isLoaded() {
        return this.loaded;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.loaded = bundle == null ? false : bundle.getBoolean("loaded");
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("loaded", this.loaded);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_wrapper, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.loadingView = view.findViewById(android.R.id.progress);
        this.loadingView.setVisibility(this.loaded ? 8 : 0);
    }

    public void setWrapFragment(Intent intent) {
        if (isEmbedFragment()) {
            if (intent.getComponent() == null || TextUtils.isEmpty(intent.getStringExtra("fragment"))) {
                Log.e("unable to wrap fragment intent " + intent);
                return;
            }
            String stringExtra = intent.getStringExtra("fragment");
            try {
                getChildFragmentManager().beginTransaction().add(R.id.wrapper_frame, (Fragment) getContext().getClassLoader().loadClass(stringExtra).newInstance(), "wrap").commit();
                this.loaded = true;
                this.loadingView.setVisibility(8);
                return;
            } catch (Exception e) {
                Log.e("unable to init wrap fragment " + stringExtra, e);
                return;
            }
        }
        startActivityForResult(intent, 63);
        getActivity().overridePendingTransition(0, 0);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 63) {
            setResult(i2, intent);
            finish();
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }
}
