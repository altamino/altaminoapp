package com.narvii.master;

import android.os.Bundle;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionInflater;
import android.transition.TransitionManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.util.PackageUtils;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes4.dex */
public class CreateCommunityFragment extends NVFragment implements View.OnClickListener {
    View btnDownLoadAcm;
    int index = 0;
    PackageUtils packageUtils;
    TextView tvTitle;

    private void checkAcmInstall() {
        View view = this.btnDownLoadAcm;
        if (view == null) {
            return;
        }
        TextView textView = (TextView) view.findViewById(R.id.button_text);
        if (this.packageUtils.installedAcm()) {
            textView.setText(getString(R.string.create_community_open));
        } else {
            textView.setText(getString(R.string.create_community_download));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        if (view.getId() == R.id.btn_create_community) {
            if (this.packageUtils.installedAcm()) {
                this.packageUtils.launchAcm();
                str = "Open";
            } else {
                this.packageUtils.downloadAcm();
                str = "Download";
            }
            ((StatisticsService) getService("statistics")).event("Downloads or Opens ACM").userPropInc("ACM Button Tapped Total").param("Button Type", str);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.packageUtils = new PackageUtils(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final View viewInflate = layoutInflater.inflate(R.layout.amino_template_picker_item, viewGroup, false);
        viewInflate.findViewById(R.id.container).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.CreateCommunityFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TransitionManager transitionManager = new TransitionManager();
                Transition transitionInflateTransition = TransitionInflater.from(CreateCommunityFragment.this.getContext()).inflateTransition(R.transition.my_transition);
                ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(R.id.container);
                Scene sceneForLayout = Scene.getSceneForLayout(viewGroup2, R.layout.amino_template_picker_item_collapse, CreateCommunityFragment.this.getContext());
                Scene sceneForLayout2 = Scene.getSceneForLayout(viewGroup2, R.layout.amino_template_picker_item_expand, CreateCommunityFragment.this.getContext());
                transitionManager.setTransition(sceneForLayout, transitionInflateTransition);
                transitionManager.setTransition(sceneForLayout2, transitionInflateTransition);
                if (CreateCommunityFragment.this.index % 2 == 0) {
                    sceneForLayout = sceneForLayout2;
                }
                TransitionManager.go(sceneForLayout);
                CreateCommunityFragment.this.index++;
            }
        });
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }
}
