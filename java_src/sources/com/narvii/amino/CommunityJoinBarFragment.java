package com.narvii.amino;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Community;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.CommunityIconView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes10.dex */
public class CommunityJoinBarFragment extends NVFragment implements AffiliationsService.AffiliationChangeListener, View.OnClickListener {
    public static final String JOIN_BAR_COMMUNITY = "_join_bar_community";
    private static final int REQUEST_JOIN = 1001;
    Button action;
    AffiliationsService affiliationsService;
    Community community;
    CommunityIconView icon;
    TextView name;
    OnCommunityActionClickListener onCommunityActionClickListener;

    public interface OnCommunityActionClickListener {
        void onEnterCommunity(Community community);

        void onJoinCommunity(Community community);
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void setOnCommunityActionClickListener(OnCommunityActionClickListener onCommunityActionClickListener) {
        this.onCommunityActionClickListener = onCommunityActionClickListener;
    }

    public static CommunityJoinBarFragment attachTo(FragmentManager fragmentManager, String str) {
        if (fragmentManager == null || str == null) {
            return null;
        }
        CommunityJoinBarFragment communityJoinBarFragment = (CommunityJoinBarFragment) fragmentManager.m0("community_join_bar");
        if (communityJoinBarFragment != null) {
            return communityJoinBarFragment;
        }
        CommunityJoinBarFragment communityJoinBarFragment2 = new CommunityJoinBarFragment();
        Bundle bundle = new Bundle();
        bundle.putString(JOIN_BAR_COMMUNITY, str);
        communityJoinBarFragment2.setArguments(bundle);
        fragmentManager.q().c(com.narvii.amino.master.R.id._community_join_bar, communityJoinBarFragment2, "community_join_bar").k();
        return communityJoinBarFragment2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCommunityDetail() {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", this.community.id);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(this.community));
        intent.putExtra("joinOnly", true);
        intent.putExtra("customFinishAnimIn", com.narvii.amino.master.R.anim.fade_in);
        intent.putExtra("customFinishAnimOut", com.narvii.amino.master.R.anim.fade_out);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, getStringParam(ExternalPostPreviewFragment.SOURCE));
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 1001);
        getActivity().overridePendingTransition(com.narvii.amino.master.R.anim.fade_in, com.narvii.amino.master.R.anim.fade_out);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 1001 || i11 != -1) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this, getStringParam(ExternalPostPreviewFragment.SOURCE));
        communityLaunchHelper.setAllowJoinCommuntiy(true);
        Community community = this.community;
        if (community._isFaked) {
            communityLaunchHelper.launch(community.id, null, null, null, null, null, null, true);
        } else {
            communityLaunchHelper.launch(community.id, community, null, null, null, null, null, false);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        if (this.community != null) {
            this.affiliationsService.removeAffiliationChangeListener(this);
        }
        super.onDestroy();
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        updateViews();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == com.narvii.amino.master.R.id.community_icon || id == com.narvii.amino.master.R.id.community_name) {
            Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
            intent.putExtra("id", getIntParam("__communityId"));
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        Community community = (Community) JacksonUtils.readAs(getStringParam(JOIN_BAR_COMMUNITY), Community.class);
        this.community = community;
        if (community != null) {
            this.affiliationsService.addAffiliationChangeListener(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.master.R.layout.fragment_community_join_bar, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        CommunityIconView communityIconView = (CommunityIconView) view.findViewById(com.narvii.amino.master.R.id.community_icon);
        this.icon = communityIconView;
        communityIconView.setOnClickListener(this);
        TextView textView = (TextView) view.findViewById(com.narvii.amino.master.R.id.community_name);
        this.name = textView;
        textView.setOnClickListener(this);
        Button button = (Button) view.findViewById(com.narvii.amino.master.R.id.action);
        this.action = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.CommunityJoinBarFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CommunityJoinBarFragment communityJoinBarFragment = CommunityJoinBarFragment.this;
                Community community = communityJoinBarFragment.community;
                if (community == null) {
                    return;
                }
                if (!communityJoinBarFragment.affiliationsService.contains(community.id)) {
                    CommunityJoinBarFragment communityJoinBarFragment2 = CommunityJoinBarFragment.this;
                    OnCommunityActionClickListener onCommunityActionClickListener = communityJoinBarFragment2.onCommunityActionClickListener;
                    if (onCommunityActionClickListener != null) {
                        onCommunityActionClickListener.onJoinCommunity(communityJoinBarFragment2.community);
                    }
                    CommunityJoinBarFragment.this.openCommunityDetail();
                    return;
                }
                CommunityJoinBarFragment communityJoinBarFragment3 = CommunityJoinBarFragment.this;
                OnCommunityActionClickListener onCommunityActionClickListener2 = communityJoinBarFragment3.onCommunityActionClickListener;
                if (onCommunityActionClickListener2 != null) {
                    onCommunityActionClickListener2.onEnterCommunity(communityJoinBarFragment3.community);
                }
                CommunityJoinBarFragment communityJoinBarFragment4 = CommunityJoinBarFragment.this;
                CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(communityJoinBarFragment4, communityJoinBarFragment4.getStringParam(ExternalPostPreviewFragment.SOURCE));
                Community community2 = CommunityJoinBarFragment.this.community;
                if (community2._isFaked) {
                    communityLaunchHelper.launch(community2.id, null, null, null, null, null, null, true);
                } else {
                    communityLaunchHelper.launch(community2.id, community2, null, null, null, null, null, false);
                }
            }
        });
        updateViews();
    }

    void updateViews() {
        int i10;
        int i11;
        if (getView() == null) {
            return;
        }
        View view = getView();
        if (this.community == null) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        view.setVisibility(i10);
        Community community = this.community;
        if (community == null) {
            return;
        }
        this.icon.setCommunity(community);
        this.name.setText(this.community.name);
        boolean zContains = this.affiliationsService.contains(this.community.id);
        Button button = this.action;
        if (zContains) {
            i11 = com.narvii.amino.master.R.string.enter;
        } else {
            i11 = com.narvii.amino.master.R.string.join;
        }
        button.setText(i11);
    }
}
