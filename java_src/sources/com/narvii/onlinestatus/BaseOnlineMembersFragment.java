package com.narvii.onlinestatus;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.config.ConfigService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.HoverAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.livelayer.BackgroundHelper;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.theme.ThemePackService;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.dialog.RealtimeBlurDialog;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BaseOnlineMembersFragment extends NVListFragment implements HoverAdapter {
    static final Tag SECTION_HEADER = new Tag("section");
    public static List<User> onlineMemberList;
    CommunityConfigHelper communityConfigHelper;
    protected MergeAdapter mergeAdapter;
    OnlineDialogHelper onlineDialogHelper;
    AbsListView.OnScrollListener scrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.onlinestatus.BaseOnlineMembersFragment.1
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            BaseOnlineMembersFragment.this.updateTitle(i10);
        }
    };

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951635;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    protected void updateTitle(int i10) {
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.mergeAdapter = mergeAdapter;
        return mergeAdapter;
    }

    @Override // com.narvii.list.HoverAdapter
    public boolean isHover(int i10) {
        return this.mergeAdapter.getItem(i10) == SECTION_HEADER;
    }

    public void showUserDialog(final User user) {
        if (!user.uid.equals(((AccountService) getService("account")).getUserId()) && this.communityConfigHelper.isChatEnabled()) {
            final UserDialog userDialog = new UserDialog(getContext(), user);
            userDialog.source = "Live Layer (See All)";
            userDialog.setOnClickListener(new UserDialog.UserDialogClickListener() { // from class: com.narvii.onlinestatus.BaseOnlineMembersFragment.2
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                public void onClicked(int i10, NVObject nVObject) {
                    if (i10 == 2) {
                        Intent intent = UserProfileFragment.intent(BaseOnlineMembersFragment.this, user);
                        if (intent == null) {
                            return;
                        }
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, userDialog.source);
                        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(BaseOnlineMembersFragment.this, intent);
                        return;
                    }
                    if (i10 == 1) {
                        BaseOnlineMembersFragment.this.startChat(user.uid);
                    } else if (i10 == 3) {
                        new FlagReportOptionDialog.Builder(BaseOnlineMembersFragment.this).nvObject(user).build().show();
                    }
                }
            });
            userDialog.show();
            return;
        }
        Intent intent = UserProfileFragment.intent(this, user);
        if (intent == null) {
            return;
        }
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Live Layer (See All)");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    public void startChat(String str) {
        if (!((AccountService) getService("account")).hasAccount()) {
            Intent intent = new Intent("chat");
            intent.putExtra("uid", str);
            ensureLogin(intent);
        } else {
            ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().m0("chatInvite");
            if (chatInviteFragment != null) {
                chatInviteFragment.startChat(str);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString(ExternalPostPreviewFragment.SOURCE, "Live Layer (See All)");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().q().e(chatInviteFragment, "chatInvite").j();
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.onlineDialogHelper = new OnlineDialogHelper(this);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.online_members_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setClipChildren(false);
        listView.setClipToPadding(false);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        super.onLoginResult(z6, intent);
        if (z6 && "chat".equals(intent.getAction())) {
            startChat(intent.getStringExtra("uid"));
        }
        if ("login".equals(intent.getAction())) {
            if (z6) {
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.onlineDialogHelper.checkOnlineStatus();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ConfigService configService = (ConfigService) getService("config");
        ThemePackService themePackService = (ThemePackService) getService("themePack");
        int communityId = configService.getCommunityId();
        Drawable dynamicBackground = BackgroundHelper.getDynamicBackground();
        int i10 = 0;
        if (dynamicBackground == null) {
            dynamicBackground = themePackService.getDrawable(communityId, ThemePackService.ThemeObject.BACKGROUND, 0, 0);
        }
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.theme_background);
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) view.findViewById(R.id.blur_bg);
        realtimeBlurView.setBlurRadius(Utils.dpToPx(getContext(), 30.0f));
        realtimeBlurView.setOverlayColor(0);
        if (dynamicBackground == null) {
            i10 = 8;
        }
        realtimeBlurView.setVisibility(i10);
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
}
