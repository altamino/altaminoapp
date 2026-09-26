package com.narvii.prefs;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.CommunityPushSettingFragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.list.prefs.PrefsItem;
import com.narvii.list.prefs.PrefsMargin;
import com.narvii.list.prefs.PrefsSection;
import com.narvii.master.MasterActivity;
import com.narvii.master.MasterLeaveCommunityHelper;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.post.draft.DraftListFragment;
import com.narvii.user.list.BlockedListFragment;
import com.narvii.util.Callback;
import com.narvii.util.Tag;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CommunitySettingFragment extends SettingsFragment {
    CAdapter mAdapter;

    class CAdapter extends SettingsFragment.Adapter {
        Tag LEAVE;

        CAdapter() {
            super();
            this.LEAVE = new Tag("leave");
        }

        private void leaveCommunity() {
            int communityId = ((ConfigService) getService("config")).getCommunityId();
            Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(communityId);
            if (community == null) {
                community = new Community();
                community.id = communityId;
            }
            new MasterLeaveCommunityHelper(CommunitySettingFragment.this).leaveCommunity(community, new Callback() { // from class: com.narvii.prefs.CommunitySettingFragment.CAdapter.1
                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.util.Callback
                public void call(Object obj) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(CAdapter.this, MasterActivity.backToMaster(CommunitySettingFragment.this, new Intent(CAdapter.this.getContext(), (Class<?>) MasterActivity.class)));
                    CommunitySettingFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    CommunitySettingFragment.this.finish();
                }
            });
        }

        @Override // com.narvii.prefs.SettingsFragment.Adapter, com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj != this.LEAVE) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            leaveCommunity();
            return true;
        }

        @Override // com.narvii.prefs.SettingsFragment.Adapter, com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            String str;
            int i10;
            int i11;
            super.buildCells(list);
            int size = list.size();
            int i12 = -1;
            int i13 = 0;
            for (int i14 = 0; i14 < size; i14++) {
                Object obj = list.get(i14);
                if ((obj instanceof PrefsItem) && (i11 = ((PrefsItem) obj).id) != R.string.community && i11 != R.string.push_notifications && i11 == R.string.settings_language) {
                    i12 = i14;
                }
            }
            AccountService accountService = (AccountService) getService("account");
            User userProfile = accountService.getUserProfile();
            boolean zHasAccount = accountService.hasAccount();
            if (i12 > 0 && zHasAccount) {
                int i15 = i12 + 2;
                list.add(i12 + 1, new PrefsSection(R.string.for_current_amino));
                PrefsEntry prefsEntry = new PrefsEntry(R.string.push_notifications);
                prefsEntry.callbackIntent = FragmentWrapperActivity.intent(CommunityPushSettingFragment.class);
                ConfigService configService = (ConfigService) getService("config");
                Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(configService.getCommunityId());
                prefsEntry.callbackIntent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_ID, configService.getCommunityId());
                Intent intent = prefsEntry.callbackIntent;
                if (community == null) {
                    str = null;
                } else {
                    str = community.name;
                }
                intent.putExtra(CommunityPushSettingFragment.COMMUNITY_PUSH_SETTING_NAME, str);
                prefsEntry.callbackIntent.putExtra(ExternalPostPreviewFragment.SOURCE, "Settings");
                list.add(i15, prefsEntry);
                PrefsEntry prefsEntry2 = new PrefsEntry(R.string.prefs_blocked_users);
                prefsEntry2.callbackIntent = FragmentWrapperActivity.intent(BlockedListFragment.class);
                int i16 = i12 + 4;
                list.add(i12 + 3, prefsEntry2);
                PrefsEntry prefsEntry3 = new PrefsEntry(R.string.allow_inbound_chat_requests);
                Intent intent2 = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
                prefsEntry3.callbackIntent = intent2;
                intent2.putExtra("title", CommunitySettingFragment.this.getString(R.string.allow_inbound_chat_requests));
                prefsEntry3.callbackIntent.putExtra("privilegeKey", User.CHAT);
                prefsEntry3.desc = userProfile.getPrivilegeText(getContext(), User.CHAT);
                if (userProfile.getPrivilege(User.CHAT) == 3) {
                    i10 = -65536;
                } else {
                    i10 = 0;
                }
                prefsEntry3.descColor = i10;
                int i17 = i12 + 5;
                list.add(i16, prefsEntry3);
                PrefsEntry prefsEntry4 = new PrefsEntry(R.string.allow_commenting_on_my_profile);
                Intent intent3 = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
                prefsEntry4.callbackIntent = intent3;
                intent3.putExtra("title", getContext().getString(R.string.comment_permission));
                prefsEntry4.callbackIntent.putExtra("subTitle", CommunitySettingFragment.this.getString(R.string.allow_commenting_on_my_profile));
                prefsEntry4.callbackIntent.putExtra("privilegeKey", User.COMMENT);
                prefsEntry4.desc = userProfile.getPrivilegeText(getContext(), User.COMMENT);
                if (userProfile.getPrivilege(User.COMMENT) == 3) {
                    i13 = -65536;
                }
                prefsEntry4.descColor = i13;
                list.add(i17, prefsEntry4);
                PrefsEntry prefsEntry5 = new PrefsEntry(R.string.saved_drafts);
                prefsEntry5.callbackIntent = FragmentWrapperActivity.intent(DraftListFragment.class);
                int i18 = i12 + 7;
                list.add(i12 + 6, prefsEntry5);
                if (NVApplication.CLIENT_TYPE == 100) {
                    list.add(i18, new PrefsMargin());
                    list.add(i12 + 8, this.LEAVE);
                }
            }
        }

        @Override // com.narvii.prefs.SettingsFragment.Adapter, com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (getItem(i10) == this.LEAVE) {
                View viewCreateView = createView(R.layout.prefs_danger_item, viewGroup, view);
                ((TextView) viewCreateView).setText(R.string.prefs_leave);
                return viewCreateView;
            }
            return super.getView(i10, view, viewGroup);
        }
    }

    @Override // com.narvii.prefs.SettingsFragment, com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 1;
    }

    @Override // com.narvii.prefs.SettingsFragment
    protected boolean isCommunityLevel() {
        return true;
    }

    @Override // com.narvii.prefs.SettingsFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mAdapter = new CAdapter();
        getListView().setOnItemLongClickListener(this.mAdapter);
        return this.mAdapter;
    }

    @Override // com.narvii.prefs.SettingsFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }
}
