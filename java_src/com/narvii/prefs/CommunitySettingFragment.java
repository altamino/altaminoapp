package com.narvii.prefs;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.CommunityPushSettingFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.list.prefs.PrefsItem;
import com.narvii.list.prefs.PrefsMargin;
import com.narvii.list.prefs.PrefsSection;
import com.narvii.master.MasterActivity;
import com.narvii.master.MasterLeaveCommunityHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.post.draft.DraftListFragment;
import com.narvii.prefs.SettingsFragment;
import com.narvii.user.list.BlockedListFragment;
import com.narvii.util.Callback;
import com.narvii.util.Tag;
import java.util.List;

/* loaded from: classes3.dex */
public class CommunitySettingFragment extends SettingsFragment {
    CAdapter mAdapter;

    @Override // com.narvii.prefs.SettingsFragment, com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 1;
    }

    @Override // com.narvii.prefs.SettingsFragment
    protected boolean isCommunityLevel() {
        return true;
    }

    @Override // com.narvii.prefs.SettingsFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // com.narvii.prefs.SettingsFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mAdapter = new CAdapter();
        getListView().setOnItemLongClickListener(this.mAdapter);
        return this.mAdapter;
    }

    class CAdapter extends SettingsFragment.Adapter {
        Tag LEAVE;

        CAdapter() {
            super();
            this.LEAVE = new Tag("leave");
        }

        @Override // com.narvii.prefs.SettingsFragment.Adapter, com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            int i;
            super.buildCells(list);
            int size = list.size();
            int i2 = -1;
            for (int i3 = 0; i3 < size; i3++) {
                Object obj = list.get(i3);
                if ((obj instanceof PrefsItem) && (i = ((PrefsItem) obj).id) != R.string.community && i != R.string.push_notifications && i == R.string.settings_language) {
                    i2 = i3;
                }
                Tag tag = this.LOGOUT;
            }
            AccountService accountService = (AccountService) getService("account");
            User userProfile = accountService.getUserProfile();
            boolean zHasAccount = accountService.hasAccount();
            if (i2 <= 0 || !zHasAccount) {
                return;
            }
            int i4 = i2 + 1;
            int i5 = i4 + 1;
            list.add(i4, new PrefsSection(R.string.for_current_amino));
            PrefsEntry prefsEntry = new PrefsEntry(R.string.push_notifications);
            prefsEntry.callbackIntent = FragmentWrapperActivity.intent(CommunityPushSettingFragment.class);
            ConfigService configService = (ConfigService) getService("config");
            Community community = ((CommunityService) getService("community")).getCommunity(configService.getCommunityId());
            prefsEntry.callbackIntent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_ID, configService.getCommunityId());
            prefsEntry.callbackIntent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_NAME, community == null ? null : community.name);
            prefsEntry.callbackIntent.putExtra("Source", "Settings");
            int i6 = i5 + 1;
            list.add(i5, prefsEntry);
            PrefsEntry prefsEntry2 = new PrefsEntry(R.string.prefs_blocked_users);
            prefsEntry2.callbackIntent = FragmentWrapperActivity.intent(BlockedListFragment.class);
            int i7 = i6 + 1;
            list.add(i6, prefsEntry2);
            PrefsEntry prefsEntry3 = new PrefsEntry(R.string.allow_inbound_chat_requests);
            prefsEntry3.callbackIntent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
            prefsEntry3.callbackIntent.putExtra("title", CommunitySettingFragment.this.getString(R.string.allow_inbound_chat_requests));
            prefsEntry3.callbackIntent.putExtra("privilegeKey", User.CHAT);
            prefsEntry3.desc = userProfile.getPrivilegeText(getContext(), User.CHAT);
            prefsEntry3.descColor = userProfile.getPrivilege(User.CHAT) == 3 ? SupportMenu.CATEGORY_MASK : 0;
            int i8 = i7 + 1;
            list.add(i7, prefsEntry3);
            PrefsEntry prefsEntry4 = new PrefsEntry(R.string.allow_commenting_on_my_profile);
            prefsEntry4.callbackIntent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
            prefsEntry4.callbackIntent.putExtra("title", getContext().getString(R.string.comment_permission));
            prefsEntry4.callbackIntent.putExtra("subTitle", CommunitySettingFragment.this.getString(R.string.allow_commenting_on_my_profile));
            prefsEntry4.callbackIntent.putExtra("privilegeKey", User.COMMENT);
            prefsEntry4.desc = userProfile.getPrivilegeText(getContext(), User.COMMENT);
            prefsEntry4.descColor = userProfile.getPrivilege(User.COMMENT) == 3 ? SupportMenu.CATEGORY_MASK : 0;
            int i9 = i8 + 1;
            list.add(i8, prefsEntry4);
            PrefsEntry prefsEntry5 = new PrefsEntry(R.string.saved_drafts);
            prefsEntry5.callbackIntent = FragmentWrapperActivity.intent(DraftListFragment.class);
            int i10 = i9 + 1;
            list.add(i9, prefsEntry5);
            if (NVApplication.CLIENT_TYPE == 100) {
                list.add(i10, new PrefsMargin());
                list.add(i10 + 1, this.LEAVE);
            }
        }

        @Override // com.narvii.prefs.SettingsFragment.Adapter, com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (getItem(i) == this.LEAVE) {
                View viewCreateView = createView(R.layout.prefs_danger_item, viewGroup, view);
                ((TextView) viewCreateView).setText(R.string.prefs_leave);
                return viewCreateView;
            }
            return super.getView(i, view, viewGroup);
        }

        private void leaveCommunity() {
            int communityId = ((ConfigService) getService("config")).getCommunityId();
            Community community = ((CommunityService) getService("community")).getCommunity(communityId);
            if (community == null) {
                community = new Community();
                community.id = communityId;
            }
            new MasterLeaveCommunityHelper(CommunitySettingFragment.this).leaveCommunity(community, new Callback() { // from class: com.narvii.prefs.CommunitySettingFragment.CAdapter.1
                @Override // com.narvii.util.Callback
                public void call(Object obj) {
                    CAdapter.this.startActivity(MasterActivity.backToMaster(CommunitySettingFragment.this, new Intent(CAdapter.this.getContext(), (Class<?>) MasterActivity.class)));
                    CommunitySettingFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    CommunitySettingFragment.this.finish();
                }
            });
        }

        @Override // com.narvii.prefs.SettingsFragment.Adapter, com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj == this.LEAVE) {
                leaveCommunity();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
