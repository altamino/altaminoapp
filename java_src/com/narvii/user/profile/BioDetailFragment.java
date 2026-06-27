package com.narvii.user.profile;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.list.MergeAdapter;
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
import com.narvii.notification.NotificationListener;
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
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class BioDetailFragment extends DetailFragment implements IFakeActionBar {
    static final DetailAdapter.HeaderTag FOLLOWERS_HEADER = new DetailAdapter.HeaderTag("profile.my_followers.header", R.string.user_followers);
    static final DetailAdapter.HeaderTag MY_FOLLOWERS_HEADER = new DetailAdapter.HeaderTag("profile.my_followers.header", R.string.user_my_followers);
    private View actionBarOverlay;
    public BioAdapter bioAdapter;
    ArrayList<Media> bioMedias;
    public CommentAdapter commentAdapter;
    View fakeActionBar;
    private TopAdapter topAdapter;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
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
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if (BioDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if (BioDetailFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onLongClick(listAdapter, i, obj, view, view2);
            }
        };
        this.topAdapter = new TopAdapter();
        this.topAdapter.addViews(new OverlayListPlaceholder(getContext()));
        mergeAdapter.addAdapter(this.topAdapter);
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        this.bioAdapter = new BioAdapter();
        this.bioAdapter.setShowBioOnly(isGlobalInteractionScope());
        mergeAdapter.addAdapter(this.bioAdapter, true);
        if (!isGlobalInteractionScope()) {
            this.commentAdapter = new CommentAdapter();
            mergeAdapter.addAdapter(this.commentAdapter);
        }
        return mergeAdapter;
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        FragmentManager fragmentManager;
        super.onCreate(bundle);
        setTitle(R.string.bio);
        if (!isGlobalInteractionScope() || (fragmentManager = getFragmentManager()) == null) {
            return;
        }
        MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_bio_detail, viewGroup, false);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (!isMe() || this.preview) {
            return;
        }
        ((FragmentWrapperActivity) getActivity()).setActionBarRightView(R.string.edit, new View.OnClickListener() { // from class: com.narvii.user.profile.BioDetailFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BioDetailFragment.this.editProfile("Edit Bio");
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 111 && i2 == -1) {
            this.bioAdapter.commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i, i2, intent);
    }

    public void editProfile(final String str) {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(this.bioAdapter.createRequest(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.user.profile.BioDetailFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                progressDialog.dismiss();
                Intent intent = new Intent(BioDetailFragment.this.getContext(), (Class<?>) (BioDetailFragment.this.isGlobalInteractionScope() ? GlobalBioPostActivity.class : UserProfilePostActivity.class));
                intent.putExtra("uid", userResponse.user.uid);
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(userResponse.user)));
                intent.putExtra("userProfile", JacksonUtils.writeAsString(userResponse.user));
                intent.putExtra("bio", true);
                intent.putExtra("Source", str);
                intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.UserProfileView.name());
                BioDetailFragment.this.startActivity(intent);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(BioDetailFragment.this.getContext(), str2, 0).show();
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView instanceof NVListView) {
            ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.user.profile.BioDetailFragment.4
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                    View childAt = absListView.getChildAt(0);
                    if (!BioDetailFragment.this.hasBackgroundOrUseGlobalTheme() || ((DetailFragment) BioDetailFragment.this).disabled || BioDetailFragment.this.isEmbedFragment()) {
                        BioDetailFragment.this.actionBarOverlay.setVisibility(8);
                        return;
                    }
                    if (i != 0 || childAt == null || childAt.getHeight() == 0) {
                        BioDetailFragment.this.actionBarOverlay.setVisibility(0);
                        BioDetailFragment.this.actionBarOverlay.setAlpha(1.0f);
                    } else {
                        BioDetailFragment.this.actionBarOverlay.setVisibility(0);
                        BioDetailFragment.this.actionBarOverlay.setAlpha(1.0f - (((childAt.getTop() + childAt.getHeight()) * 1.0f) / childAt.getHeight()));
                    }
                }
            });
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.fakeActionBar = view.findViewById(R.id.fake_action_bar);
        this.actionBarOverlay = view.findViewById(R.id.action_bar_overlay);
        super.onViewCreated(view, bundle);
    }

    public boolean isMe() {
        return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), getStringParam("id"));
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

    class CommentAdapter extends CommentListAdapter {
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
            BioDetailFragment.this.startActivityForResult(intent, 111);
        }
    }

    class BioAdapter extends DetailAdapter<User, UserResponse> implements NotificationListener {
        private boolean showBioOnly;

        public BioAdapter() {
            super(BioDetailFragment.this);
            this.showBioOnly = false;
            this.loggingSource = LoggingSource.UserProfileView;
        }

        public void setShowBioOnly(boolean z) {
            this.showBioOnly = z;
        }

        @Override // com.narvii.detail.DetailAdapter
        public boolean showShareMediaBar() {
            return !BioDetailFragment.this.preview;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, UserResponse userResponse) {
            if (BioDetailFragment.this.preview) {
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
                    super.onObjectResponse(apiRequest, (ApiRequest) userResponse);
                    return;
                }
                return;
            }
            super.onObjectResponse(apiRequest, (ApiRequest) userResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(UserResponse userResponse) {
            super.setResponse((BioAdapter) userResponse);
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
        protected ApiRequest createUserListRequest(int i, int i2) {
            return ApiRequest.builder().path("/user-profile/" + BioDetailFragment.this.id() + "/member").param(TtmlNode.START, Integer.valueOf(i)).param("size", Integer.valueOf(i2)).param("cv", "1.2").build();
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

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends User> objectType() {
            return User.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<UserResponse> responseType() {
            return UserResponse.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(User user) {
            UserResponse userResponse = new UserResponse();
            userResponse.user = user;
            setResponse(userResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            if (BioDetailFragment.this.preview) {
                return null;
            }
            return ApiRequest.builder().path("/user-profile/" + BioDetailFragment.this.id()).build();
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
            } else {
                if (!(user != null && user.isProfileAccessibleByUser(((AccountService) getService("account")).getUserProfile())) || TextUtils.isEmpty(user.content)) {
                    list.add(BioDetailFragment.this.getString(R.string.empty_content));
                } else {
                    splitSegments(user.content, user.mediaList, list, new ArrayList());
                }
            }
            if (this.showBioOnly) {
                return;
            }
            if (!TextUtils.isEmpty(user.content)) {
                list.add(DetailAdapter.DIVIDER);
            }
            list.add(DetailAdapter.COMMENT_HEADER);
            list.add(DetailAdapter.COMMENT_ADD);
        }

        @Override // com.narvii.detail.DetailAdapter
        public View createMediaView(Media media, View view, ViewGroup viewGroup) {
            View viewCreateMediaView = super.createMediaView(media, view, viewGroup);
            NVVideoListDelegate.markVideoCell(viewCreateMediaView, R.id.image, media, (Media) null, (NVObject) getObject(), 0, true);
            return viewCreateMediaView;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean showUserCommentSetting() {
            return BioDetailFragment.this.isMe();
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
                startActivity(intent);
            }
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof Media) {
                Media media = (Media) obj;
                if (media.isVideo()) {
                    startActivity(NVFullScreenVideoActivity.intent(media, getObject(), (Class<? extends NVFragment>) OptionMenuFragment.class));
                    return true;
                }
                galleryBioMedias(media);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean onUserGridClick(View view, String str) {
            if (super.onUserGridClick(view, "Followers")) {
                return true;
            }
            Intent intent = FragmentWrapperActivity.intent(FollowersListFragment.class);
            intent.putExtra("id", BioDetailFragment.this.getStringParam("id"));
            startActivity(intent);
            return true;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew(String str) {
            super.commentNew(str);
            CommentPostActivity.setStatusListener(BioDetailFragment.this.commentAdapter);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected int commentSort() {
            return BioDetailFragment.this.commentAdapter.sort();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void setCommentSort(int i) {
            BioDetailFragment.this.commentAdapter.setSort(i);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void commentRefresh() {
            BioDetailFragment.this.commentAdapter.resetList();
        }
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

    private boolean isBioDetailDarkTheme() {
        if (!isGlobalInteractionScope() || hasBackground()) {
            return isBackgroundColorDark();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasBackgroundOrUseGlobalTheme() {
        return hasBackground() || isGlobalInteractionScope();
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new FeedDetailVideoDelegate(this, getActivity());
    }

    @Override // com.narvii.theme.IFakeActionBar
    public void updateFakeActionBarThemeUI() {
        if (this.fakeActionBar != null) {
            this.fakeActionBar.setBackgroundDrawable(((ConfigService) getService("config")).getTheme().fakeActionbarBackground());
            this.fakeActionBar.setVisibility((hasBackgroundOrUseGlobalTheme() || this.disabled || isEmbedFragment()) ? 8 : 0);
        }
    }
}
