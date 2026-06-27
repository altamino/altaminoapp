package com.narvii.amino;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Community;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.CommunityIconView;

/* loaded from: classes2.dex */
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == com.narvii.amino.mastes.R.id.community_icon || id == com.narvii.amino.mastes.R.id.community_name) {
            Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
            intent.putExtra("id", getIntParam("__communityId"));
            startActivity(intent);
        }
    }

    public void setOnCommunityActionClickListener(OnCommunityActionClickListener onCommunityActionClickListener) {
        this.onCommunityActionClickListener = onCommunityActionClickListener;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        this.community = (Community) JacksonUtils.readAs(getStringParam(JOIN_BAR_COMMUNITY), Community.class);
        if (this.community != null) {
            this.affiliationsService.addAffiliationChangeListener(this);
        }
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        updateViews();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.mastes.R.layout.fragment_community_join_bar, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.icon = (CommunityIconView) view.findViewById(com.narvii.amino.mastes.R.id.community_icon);
        this.icon.setOnClickListener(this);
        this.name = (TextView) view.findViewById(com.narvii.amino.mastes.R.id.community_name);
        this.name.setOnClickListener(this);
        this.action = (Button) view.findViewById(com.narvii.amino.mastes.R.id.action);
        this.action.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.CommunityJoinBarFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CommunityJoinBarFragment communityJoinBarFragment = CommunityJoinBarFragment.this;
                Community community = communityJoinBarFragment.community;
                if (community == null) {
                    return;
                }
                if (communityJoinBarFragment.affiliationsService.contains(community.id)) {
                    CommunityJoinBarFragment communityJoinBarFragment2 = CommunityJoinBarFragment.this;
                    OnCommunityActionClickListener onCommunityActionClickListener = communityJoinBarFragment2.onCommunityActionClickListener;
                    if (onCommunityActionClickListener != null) {
                        onCommunityActionClickListener.onEnterCommunity(communityJoinBarFragment2.community);
                    }
                    CommunityJoinBarFragment communityJoinBarFragment3 = CommunityJoinBarFragment.this;
                    CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(communityJoinBarFragment3, communityJoinBarFragment3.getStringParam("Source"));
                    Community community2 = CommunityJoinBarFragment.this.community;
                    if (community2._isFaked) {
                        communityLaunchHelper.launch(community2.id, null, null, null, null, null, null, true);
                        return;
                    } else {
                        communityLaunchHelper.launch(community2.id, community2, null, null, null, null, null, false);
                        return;
                    }
                }
                CommunityJoinBarFragment communityJoinBarFragment4 = CommunityJoinBarFragment.this;
                OnCommunityActionClickListener onCommunityActionClickListener2 = communityJoinBarFragment4.onCommunityActionClickListener;
                if (onCommunityActionClickListener2 != null) {
                    onCommunityActionClickListener2.onJoinCommunity(communityJoinBarFragment4.community);
                }
                CommunityJoinBarFragment.this.openCommunityDetail();
            }
        });
        updateViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCommunityDetail() {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", this.community.id);
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(this.community));
        intent.putExtra("joinOnly", true);
        intent.putExtra("customFinishAnimIn", com.narvii.amino.mastes.R.anim.fade_in);
        intent.putExtra("customFinishAnimOut", com.narvii.amino.mastes.R.anim.fade_out);
        intent.putExtra("Source", getStringParam("Source"));
        startActivityForResult(intent, 1001);
        getActivity().overridePendingTransition(com.narvii.amino.mastes.R.anim.fade_in, com.narvii.amino.mastes.R.anim.fade_out);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1001 && i2 == -1) {
            CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this, getStringParam("Source"));
            communityLaunchHelper.setAllowJoinCommuntiy(true);
            Community community = this.community;
            if (community._isFaked) {
                communityLaunchHelper.launch(community.id, null, null, null, null, null, null, true);
                return;
            } else {
                communityLaunchHelper.launch(community.id, community, null, null, null, null, null, false);
                return;
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    void updateViews() {
        if (getView() == null) {
            return;
        }
        getView().setVisibility(this.community == null ? 8 : 0);
        Community community = this.community;
        if (community == null) {
            return;
        }
        this.icon.setCommunity(community);
        this.name.setText(this.community.name);
        this.action.setText(this.affiliationsService.contains(this.community.id) ? com.narvii.amino.mastes.R.string.enter : com.narvii.amino.mastes.R.string.join);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        if (this.community != null) {
            this.affiliationsService.removeAffiliationChangeListener(this);
        }
        super.onDestroy();
    }

    public static CommunityJoinBarFragment attachTo(FragmentManager fragmentManager, String str) {
        if (fragmentManager == null || str == null) {
            return null;
        }
        CommunityJoinBarFragment communityJoinBarFragment = (CommunityJoinBarFragment) fragmentManager.findFragmentByTag("community_join_bar");
        if (communityJoinBarFragment != null) {
            return communityJoinBarFragment;
        }
        CommunityJoinBarFragment communityJoinBarFragment2 = new CommunityJoinBarFragment();
        Bundle bundle = new Bundle();
        bundle.putString(JOIN_BAR_COMMUNITY, str);
        communityJoinBarFragment2.setArguments(bundle);
        fragmentManager.beginTransaction().add(com.narvii.amino.mastes.R.id._community_join_bar, communityJoinBarFragment2, "community_join_bar").commitAllowingStateLoss();
        return communityJoinBarFragment2;
    }
}
