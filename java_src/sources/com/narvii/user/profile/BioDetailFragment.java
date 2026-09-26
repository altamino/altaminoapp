package com.narvii.user.profile;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.account.AccountService;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.Module;
import com.narvii.notification.Notification;
import com.narvii.nvplayer.delegate.FeedDetailVideoDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.theme.IFakeActionBar;
import com.narvii.user.list.FollowersListFragment;
import com.narvii.user.profile.post.GlobalBioPostActivity;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.user.profile.post.UserProfilePostActivity;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PaletteUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BioDetailFragment extends DetailFragment implements IFakeActionBar {
    static final DetailAdapter.HeaderTag FOLLOWERS_HEADER = new DetailAdapter.HeaderTag("profile.my_followers.header", R.string.user_followers);
    static final DetailAdapter.HeaderTag MY_FOLLOWERS_HEADER = new DetailAdapter.HeaderTag("profile.my_followers.header", R.string.user_my_followers);
    private View actionBarOverlay;
    public BioAdapter bioAdapter;
    ArrayList<Media> bioMedias;
    public CommentAdapter commentAdapter;
    View fakeActionBar;
    private TopAdapter topAdapter;

    class BioAdapter extends DetailAdapter<User, UserResponse> {
        private boolean showBioOnly;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends User> objectType() {
            return User.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<UserResponse> responseType() {
            return UserResponse.class;
        }

        public void setShowBioOnly(boolean z6) {
            this.showBioOnly = z6;
        }

        public BioAdapter() {
            super(BioDetailFragment.this);
            this.showBioOnly = false;
            this.loggingSource = LoggingSource.UserProfileView;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void commentRefresh() {
            BioDetailFragment.this.commentAdapter.resetList();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected int commentSort() {
            return BioDetailFragment.this.commentAdapter.sort();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            if (BioDetailFragment.this.preview) {
                return null;
            }
            return ApiRequest.builder().path("/user-profile/" + BioDetailFragment.this.id()).build();
        }

        public void galleryBioMedias(Media media) {
            ArrayList<Media> arrayList = BioDetailFragment.this.bioMedias;
            if (arrayList != null) {
                int iIndexOf = arrayList.indexOf(media);
                Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
                intent.putExtra("parent", JacksonUtils.writeAsString(getObject()));
                intent.putExtra("parentClass", User.class);
                intent.putExtra("list", JacksonUtils.writeAsString(BioDetailFragment.this.bioMedias));
                if (iIndexOf > 0) {
                    intent.putExtra("position", iIndexOf);
                }
                intent.putExtra("preview", BioDetailFragment.this.preview);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            }
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Media)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Media media = (Media) obj;
            if (media.isVideo()) {
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, NVFullScreenVideoActivity.intent(media, getObject(), (Class<? extends NVFragment>) OptionMenuFragment.class));
                return true;
            }
            galleryBioMedias(media);
            return true;
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            User object;
            String str;
            if ((notification.obj instanceof User) && (object = getObject()) != null && (((str = notification.action) == "update" || str == "edit") && Utils.isEqualsNotNull(object.uid, notification.id))) {
                UserResponse response = getResponse();
                response.user = (User) notification.obj;
                setResponse(response);
                if (BioDetailFragment.this.isMe()) {
                    sendRequest();
                }
            }
            super.onNotification(notification);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, UserResponse userResponse) {
            if (!BioDetailFragment.this.preview) {
                super.onObjectResponse(apiRequest, userResponse);
                return;
            }
            User object = getObject();
            if (object != null) {
                User user = userResponse.user;
                user.mediaList = object.mediaList;
                user.nickname = object.nickname;
                user.content = object.content;
                user.extensions = object.extensions;
                user.address = object.address;
                user.latitude = object.latitude;
                user.longitude = object.longitude;
                user.icon = object.icon;
                user.mediaList = object.mediaList;
                super.onObjectResponse(apiRequest, userResponse);
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean onUserGridClick(View view, String str) {
            if (super.onUserGridClick(view, "Followers")) {
                return true;
            }
            Intent intent = FragmentWrapperActivity.intent(FollowersListFragment.class);
            intent.putExtra("id", BioDetailFragment.this.getStringParam("id"));
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void setCommentSort(int i10) {
            BioDetailFragment.this.commentAdapter.setSort(i10);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(User user) {
            UserResponse userResponse = new UserResponse();
            userResponse.user = user;
            setResponse(userResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(UserResponse userResponse) {
            super.setResponse(userResponse);
            User user = userResponse.user;
            if (user != null) {
                BioDetailFragment.this.bioMedias = user.getBioMedias();
                String strNickname = userResponse.user.nickname();
                if (!TextUtils.isEmpty(strNickname)) {
                    BioDetailFragment.this.setTitle(strNickname);
                }
            }
            ((DetailFragment) BioDetailFragment.this)._hasBackground = userResponse.user.hasBackground();
            ((DetailFragment) BioDetailFragment.this)._isBackgroundDark = userResponse.user.getBackgroundMedia() != null || PaletteUtils.isDarkColor(userResponse.user.getBackgroundColor());
            ((NVFragment) BioDetailFragment.this)._backgroundColor = userResponse.user.getBackgroundColor();
            BioDetailFragment.this.updateBackground();
            if (BioDetailFragment.this.topAdapter != null) {
                BioDetailFragment.this.topAdapter.notifyDataSetChanged();
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        public boolean showShareMediaBar() {
            return !BioDetailFragment.this.preview;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean showUserCommentSetting() {
            return BioDetailFragment.this.isMe();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            User user = getResponse().user;
            boolean zIsModerator = user.isModerator();
            BioDetailFragment.this.isMe();
            if (zIsModerator) {
                if (!TextUtils.isEmpty(user.content)) {
                    splitSegments(user.content, user.mediaList, list, new ArrayList());
                }
            } else if (!user.isProfileAccessibleByUser(((AccountService) getService("account")).getUserProfile()) || TextUtils.isEmpty(user.content)) {
                list.add(BioDetailFragment.this.getString(R.string.empty_content));
            } else {
                splitSegments(user.content, user.mediaList, list, new ArrayList());
            }
            if (!this.showBioOnly) {
                if (!TextUtils.isEmpty(user.content)) {
                    list.add(DetailAdapter.DIVIDER);
                }
                list.add(DetailAdapter.COMMENT_HEADER);
                list.add(DetailAdapter.COMMENT_ADD);
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew(String str) {
            super.commentNew(str);
            CommentPostActivity.setStatusListener(BioDetailFragment.this.commentAdapter);
        }

        @Override // com.narvii.detail.DetailAdapter
        public View createMediaView(Media media, View view, ViewGroup viewGroup) {
            View viewCreateMediaView = super.createMediaView(media, view, viewGroup);
            NVVideoListDelegate.markVideoCell(viewCreateMediaView, R.id.image, media, (Media) null, (NVObject) getObject(), 0, true);
            return viewCreateMediaView;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createUserListRequest(int i10, int i11) {
            return ApiRequest.builder().path("/user-profile/" + BioDetailFragment.this.id() + "/member").param("start", Integer.valueOf(i10)).param("size", Integer.valueOf(i11)).param("cv", "1.2").build();
        }
    }

    class CommentAdapter extends CommentListAdapter {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        public CommentAdapter() {
            super(BioDetailFragment.this);
            this.source = "Bio";
            this.loggingSource = LoggingSource.UserProfileView;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            BioAdapter bioAdapter = BioDetailFragment.this.bioAdapter;
            if (bioAdapter == null) {
                return null;
            }
            return bioAdapter.getObject();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(Intent intent) {
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(BioDetailFragment.this, intent, 111);
        }
    }

    private class TopAdapter extends StaticViewAdapter {
        private TopAdapter() {
        }

        @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
        public int getCount() {
            if (!BioDetailFragment.this.hasBackgroundOrUseGlobalTheme() || ((DetailFragment) BioDetailFragment.this).disabled) {
                return 0;
            }
            return super.getCount();
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.user.profile.BioDetailFragment.1
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                if (BioDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                if (BioDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
        };
        TopAdapter topAdapter = new TopAdapter();
        this.topAdapter = topAdapter;
        topAdapter.addViews(new OverlayListPlaceholder(getContext()));
        mergeAdapter.addAdapter(this.topAdapter);
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        BioAdapter bioAdapter = new BioAdapter();
        this.bioAdapter = bioAdapter;
        bioAdapter.setShowBioOnly(isGlobalInteractionScope());
        mergeAdapter.addAdapter(this.bioAdapter, true);
        if (!isGlobalInteractionScope()) {
            CommentAdapter commentAdapter = new CommentAdapter();
            this.commentAdapter = commentAdapter;
            mergeAdapter.addAdapter(commentAdapter);
        }
        return mergeAdapter;
    }

    public void editProfile(final String str) {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(this.bioAdapter.createRequest(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.user.profile.BioDetailFragment.3
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(BioDetailFragment.this.getContext(), str2, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                progressDialog.dismiss();
                Intent intent = new Intent(BioDetailFragment.this.getContext(), (Class<?>) (BioDetailFragment.this.isGlobalInteractionScope() ? GlobalBioPostActivity.class : UserProfilePostActivity.class));
                intent.putExtra("uid", userResponse.user.uid);
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(userResponse.user)));
                intent.putExtra("userProfile", JacksonUtils.writeAsString(userResponse.user));
                intent.putExtra("bio", true);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, str);
                intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.UserProfileView.name());
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(BioDetailFragment.this, intent);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new FeedDetailVideoDelegate(this, getActivity());
    }

    public boolean isMe() {
        return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), getStringParam("id"));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 111 && i11 == -1) {
            this.bioAdapter.commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.theme.IFakeActionBar
    public void updateFakeActionBarThemeUI() {
        if (this.fakeActionBar != null) {
            this.fakeActionBar.setBackgroundDrawable(((ConfigService) getService("config")).getTheme().fakeActionbarBackground());
            this.fakeActionBar.setVisibility((hasBackgroundOrUseGlobalTheme() || this.disabled || isEmbedFragment()) ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasBackgroundOrUseGlobalTheme() {
        if (!hasBackground() && !isGlobalInteractionScope()) {
            return false;
        }
        return true;
    }

    private boolean isBioDetailDarkTheme() {
        if (isGlobalInteractionScope() && !hasBackground()) {
            return true;
        }
        return isBackgroundColorDark();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackground() {
        updateFakeActionBarThemeUI();
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter != null) {
            this.backgroundView.setBackgroundSource(bioAdapter.getObject());
        }
        setDarkTheme(isBioDetailDarkTheme());
        BioAdapter bioAdapter2 = this.bioAdapter;
        if (bioAdapter2 != null) {
            bioAdapter2.setDarkTheme(isBioDetailDarkTheme());
        }
        CommentAdapter commentAdapter = this.commentAdapter;
        if (commentAdapter != null) {
            commentAdapter.setDarkTheme(isBioDetailDarkTheme());
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (isMe() && !this.preview) {
            ((FragmentWrapperActivity) getActivity()).setActionBarRightView(R.string.edit, new View.OnClickListener() { // from class: com.narvii.user.profile.BioDetailFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BioDetailFragment.this.editProfile("Edit Bio");
                }
            });
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        FragmentManager fragmentManager;
        super.onCreate(bundle);
        setTitle(R.string.bio);
        if (isGlobalInteractionScope() && (fragmentManager = getFragmentManager()) != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Looks at Bio Detail View").userPropInc("Looks at Bio Detail View Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_bio_detail, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView instanceof NVListView) {
            ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.user.profile.BioDetailFragment.4
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                    View childAt = absListView.getChildAt(0);
                    if (!BioDetailFragment.this.hasBackgroundOrUseGlobalTheme() || ((DetailFragment) BioDetailFragment.this).disabled || BioDetailFragment.this.isEmbedFragment()) {
                        BioDetailFragment.this.actionBarOverlay.setVisibility(8);
                        return;
                    }
                    if (i10 != 0 || childAt == null || childAt.getHeight() == 0) {
                        BioDetailFragment.this.actionBarOverlay.setVisibility(0);
                        BioDetailFragment.this.actionBarOverlay.setAlpha(1.0f);
                    } else {
                        float top = 1.0f - (((childAt.getTop() + childAt.getHeight()) * 1.0f) / childAt.getHeight());
                        BioDetailFragment.this.actionBarOverlay.setVisibility(0);
                        BioDetailFragment.this.actionBarOverlay.setAlpha(top);
                    }
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i10) {
                }
            });
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.fakeActionBar = view.findViewById(R.id.fake_action_bar);
        this.actionBarOverlay = view.findViewById(R.id.action_bar_overlay);
        super.onViewCreated(view, bundle);
    }
}
