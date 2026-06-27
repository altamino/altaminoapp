package com.narvii.onlinestatus;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.config.ConfigService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.list.HoverAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.livelayer.BackgroundHelper;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.theme.ThemePackService;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.RealtimeBlurDialog;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class BaseOnlineMembersFragment extends NVListFragment implements HoverAdapter {
    static final Tag SECTION_HEADER = new Tag("section");
    public static List<User> onlineMemberList;
    CommunityConfigHelper communityConfigHelper;
    protected MergeAdapter mergeAdapter;
    OnlineDialogHelper onlineDialogHelper;
    AbsListView.OnScrollListener scrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.onlinestatus.BaseOnlineMembersFragment.1
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            BaseOnlineMembersFragment.this.updateTitle(i);
        }
    };

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755026;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    protected void updateTitle(int i) {
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", "Live Layer (See All)");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.onlineDialogHelper = new OnlineDialogHelper(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        ConfigService configService = (ConfigService) getService("config");
        ThemePackService themePackService = (ThemePackService) getService("themePack");
        int communityId = configService.getCommunityId();
        Drawable dynamicBackground = BackgroundHelper.getDynamicBackground();
        if (dynamicBackground == null) {
            dynamicBackground = themePackService.getDrawable(communityId, ThemePackService.ThemeObject.BACKGROUND, 0, 0);
        }
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.theme_background);
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) view.findViewById(R.id.blur_bg);
        realtimeBlurView.setBlurRadius(Utils.dpToPx(getContext(), 30.0f));
        realtimeBlurView.setOverlayColor(0);
        realtimeBlurView.setVisibility(dynamicBackground == null ? 8 : 0);
        if (dynamicBackground != null) {
            nVImageView.setImageDrawable(dynamicBackground);
        } else {
            nVImageView.setImageDrawable(new ColorDrawable(themePackService.getThemeColor(communityId)));
        }
        ListView listView = getListView();
        if (listView != null) {
            listView.setOnScrollListener(this.scrollListener);
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.online_members_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.onlineDialogHelper.checkOnlineStatus();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setClipChildren(false);
        listView.setClipToPadding(false);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.mergeAdapter = mergeAdapter;
        return mergeAdapter;
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i) {
        return this.mergeAdapter.getItem(i) == SECTION_HEADER;
    }

    public void showUserDialog(final User user) {
        if (user.uid.equals(((AccountService) getService("account")).getUserId()) || !this.communityConfigHelper.isChatEnabled()) {
            Intent intent = UserProfileFragment.intent(this, user);
            if (intent == null) {
                return;
            }
            intent.putExtra("Source", "Live Layer (See All)");
            startActivity(intent);
            return;
        }
        final UserDialog userDialog = new UserDialog(getContext(), user);
        userDialog.source = "Live Layer (See All)";
        userDialog.setOnClickListener(new UserDialog.UserDialogClickListener() { // from class: com.narvii.onlinestatus.BaseOnlineMembersFragment.2
            @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
            public void onClicked(int i, NVObject nVObject) {
                if (i == 2) {
                    Intent intent2 = UserProfileFragment.intent(BaseOnlineMembersFragment.this, user);
                    if (intent2 == null) {
                        return;
                    }
                    intent2.putExtra("Source", userDialog.source);
                    BaseOnlineMembersFragment.this.startActivity(intent2);
                    return;
                }
                if (i == 1) {
                    BaseOnlineMembersFragment.this.startChat(user.uid);
                } else if (i == 3) {
                    new FlagReportOptionDialog.Builder(BaseOnlineMembersFragment.this).nvObject(user).build().show();
                }
            }
        });
        userDialog.show();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        super.onLoginResult(z, intent);
        if (z && "chat".equals(intent.getAction())) {
            startChat(intent.getStringExtra("uid"));
        }
        if ("login".equals(intent.getAction())) {
            if (z) {
                RealtimeBlurDialog realtimeBlurDialog = this.onlineDialogHelper.goLoginDialog;
                if (realtimeBlurDialog != null) {
                    realtimeBlurDialog.dismiss();
                    this.onlineDialogHelper.goLoginDialog = null;
                    return;
                }
                return;
            }
            finish();
        }
    }

    public void startChat(String str) {
        if (((AccountService) getService("account")).hasAccount()) {
            ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().findFragmentByTag("chatInvite");
            if (chatInviteFragment != null) {
                chatInviteFragment.startChat(str);
                return;
            }
            return;
        }
        Intent intent = new Intent("chat");
        intent.putExtra("uid", str);
        ensureLogin(intent);
    }
}
