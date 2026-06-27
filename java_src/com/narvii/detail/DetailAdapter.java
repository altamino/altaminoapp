package com.narvii.detail;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.feed.FeedHelper;
import com.narvii.list.NVAdapter;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.GridLayoutImpressionCollector;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.Tippable;
import com.narvii.model.TippingInfo;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ObjectResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.Module;
import com.narvii.monetization.store.TippingConfirmDialog;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.prefs.UserProfilePrivilegeFragment;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.SharePayload;
import com.narvii.tipping.TippingHelper;
import com.narvii.tipping.TippingItem;
import com.narvii.tipping.model.TipLog;
import com.narvii.tipping.model.TipLogListResponse;
import com.narvii.tipping.model.TipSummary;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.ParamUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.ranking.RankingService;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.IMGUtils;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.widget.FlexSizeImageView;
import com.narvii.widget.ISecretImage;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ShareMediaBar;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;
import com.twitter.Extractor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class DetailAdapter<T extends NVObject, E extends ObjectResponse<? extends T>> extends NVAdapter implements NotificationListener, TippingConfirmDialog.TipSuccessListener {
    public static final int COMMENT_SORT_NEWEST = 0;
    public static final int COMMENT_SORT_OLDEST = 1;
    public static final int COMMENT_SORT_TOP = 2;
    public static final int SEND_REQUEST_CAUSE_ERROR_RETRY = 3;
    public static final int SEND_REQUEST_CAUSE_ON_ATTACH = 1;
    public static final int SEND_REQUEST_CAUSE_REFRESH = 2;
    private final ArrayList<CellType> cellTypes;
    private ArrayList<Object> cells;
    private int columnSize;
    protected String errorMsg;
    private final ApiResponseListener<E> listener;
    public LoggingOrigin loggingOrigin;
    public LoggingSource loggingSource;
    private PushNotificationHelper pushNotificationHelper;
    private int rawSize;
    private ApiRequest request;
    private E response;
    private int sendRequestCause;
    public String source;
    protected DetailAdapter<T, E>.DetailTagClickListener tagClickListener;
    private View tipCell;
    private TipLogListResponse tipLogListResponse;
    private String tipperListError;
    private final ApiResponseListener<TipLogListResponse> tipperListListener;
    private ApiRequest tipperListRequest;
    private int tipperListSize;
    private TippingHelper tippingHelper;
    protected ImpressionCollector<User> userIPC;
    private String userListError;
    private final ApiResponseListener<UserListResponse> userListListener;
    private int userListMargin;
    private ApiRequest userListRequest;
    private UserListResponse userListResponse;
    private int userListSize;
    public static final HeaderTag PHOTOS_HEADER = new HeaderTag("detail.photos.header", R.string.detail_photos);
    public static final HeaderTag MORE_PHOTOS_HEADER = new HeaderTag("detail.morephotos.header", R.string.detail_more_photos);
    public static final CellType DIVIDER = new CellType("detail.divider");
    public static final CellType DIVIDER_LINE = new CellType("detail.divider.line");
    public static final CellType COMMENT_HEADER = new CellType("detail.comment.header");
    public static final CellType COMMENT_ADD = new CellType("detail.comment.add");
    public static final CellType LOADING = new CellType("detail.loading");
    public static final CellType LIST_DIVIDER = new CellType("detail.list_divider");
    public static final CellType PADDING10 = new CellType("detail.padding10");
    public static final CellType USER_GRID = new CellType("detail.usergrid");
    public static final CellType _RELATED_PAGES = new CellType("detail.related", false);
    public static final CellType TIPPING = new CellType("detail.tipping");

    protected boolean allowAutoJoin() {
        return false;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    protected boolean blurMedia() {
        return false;
    }

    protected abstract void buildCells(List<Object> list);

    protected void commentRefresh() {
    }

    protected int commentSort() {
        return 0;
    }

    protected abstract ApiRequest createRequest();

    protected int getHeaderBackgroundColor() {
        return 855638015;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    public abstract Class<? extends T> objectType();

    protected void onTipBoxClicked(boolean z) {
    }

    protected abstract Class<? extends E> responseType();

    protected void setCommentSort(int i) {
    }

    public abstract void setObject(T t);

    protected boolean showEmojiOnly() {
        return false;
    }

    protected boolean showEmptyContent() {
        return true;
    }

    public boolean showShareMediaBar() {
        return true;
    }

    protected boolean showUserCommentSetting() {
        return false;
    }

    public int getSendRequestCause() {
        return this.sendRequestCause;
    }

    public static class CellType extends Tag {
        public final Class<?> clazz;
        public final boolean isEnabled;

        public CellType(String str) {
            this(str, false);
        }

        public CellType(String str, boolean z) {
            super(str);
            this.clazz = null;
            this.isEnabled = z;
        }

        public CellType(Class<?> cls) {
            this(cls, false);
        }

        public CellType(Class<?> cls, boolean z) {
            super(cls.getName());
            this.clazz = cls;
            this.isEnabled = z;
        }

        public boolean equals(Object obj) {
            Class<?> cls = this.clazz;
            if (cls != null && (obj instanceof CellType)) {
                return cls.equals(((CellType) obj).clazz);
            }
            return super.equals(obj);
        }

        public int hashCode() {
            Class<?> cls = this.clazz;
            if (cls != null) {
                return cls.hashCode();
            }
            return super.hashCode();
        }

        public boolean isType(Object obj) {
            Class<?> cls = this.clazz;
            if (cls != null) {
                return cls.isInstance(obj);
            }
            return obj == this;
        }
    }

    public static class HeaderTag extends Tag {
        int count;
        final int stringId;

        public HeaderTag(String str, int i) {
            super(str);
            this.stringId = i;
        }

        public void setCount(int i) {
            this.count = i;
        }
    }

    public static class AddTag extends Tag {
        final int stringId;

        public AddTag(String str, int i) {
            super(str);
            this.stringId = i;
        }
    }

    public DetailAdapter(NVContext nVContext) {
        super(nVContext);
        this.userIPC = new GridLayoutImpressionCollector<User>(User.class, R.id.grid) { // from class: com.narvii.detail.DetailAdapter.1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo objectInfo) {
                super.completeImpressionLogBuilder(builder, objectInfo);
                builder.area("LikesUser");
            }
        };
        this.source = "Page Detailed View";
        this.loggingSource = LoggingSource.PostDetailView;
        this.loggingOrigin = null;
        this.listener = (ApiResponseListener<E>) new ApiResponseListener<E>(responseType()) { // from class: com.narvii.detail.DetailAdapter.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, E e) throws Exception {
                DetailAdapter.this.request = null;
                DetailAdapter.this.onObjectResponse(apiRequest, e);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DetailAdapter.this.request = null;
                DetailAdapter.this.onFailResponse(apiRequest, str, apiResponse);
            }
        };
        this.columnSize = 0;
        this.rawSize = 1;
        this.userListMargin = 0;
        this.userListSize = 48;
        this.tipperListSize = 15;
        this.userListListener = new ApiResponseListener<UserListResponse>(UserListResponse.class) { // from class: com.narvii.detail.DetailAdapter.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserListResponse userListResponse) throws Exception {
                DetailAdapter.this.userListRequest = null;
                DetailAdapter.this.userListError = null;
                DetailAdapter.this.userListResponse = userListResponse;
                if (userListResponse.userList != null) {
                    userListResponse.userList = new FilterHelper(DetailAdapter.this).filter(userListResponse.userList);
                }
                DetailAdapter.this.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DetailAdapter.this.userListRequest = null;
                DetailAdapter.this.userListError = str;
                DetailAdapter.this.notifyDataSetChanged();
            }
        };
        this.tipperListListener = new ApiResponseListener<TipLogListResponse>(TipLogListResponse.class) { // from class: com.narvii.detail.DetailAdapter.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, TipLogListResponse tipLogListResponse) {
                DetailAdapter.this.tipperListRequest = null;
                DetailAdapter.this.tipperListError = null;
                DetailAdapter.this.tipLogListResponse = tipLogListResponse;
                Cloneable object = DetailAdapter.this.getObject();
                if (object instanceof Tippable) {
                    tipLogListResponse.tippedUserList = new FilterHelper(DetailAdapter.this).keepBlockedUser(DetailAdapter.this.tippingHelper.isTipAuthor((Tippable) object)).filter(tipLogListResponse.tippedUserList);
                }
                DetailAdapter.this.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                DetailAdapter.this.tipperListRequest = null;
                DetailAdapter.this.tipperListError = str;
                DetailAdapter.this.notifyDataSetChanged();
            }
        };
        this.cellTypes = new ArrayList<>();
        getCellTypes(this.cellTypes);
        this.pushNotificationHelper = new PushNotificationHelper(nVContext);
    }

    @Override // com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        ObjectResponse objectResponse = (ObjectResponse) JacksonUtils.readAs(bundle.getString("response"), responseType());
        if (objectResponse != null) {
            setResponse(objectResponse);
        }
        this.errorMsg = bundle.getString("errorMsg");
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(this.userIPC, false);
        if (this.response == null) {
            String stringParam = null;
            Object obj = this.context;
            if (obj instanceof Activity) {
                stringParam = ParamUtils.getStringParam((Activity) obj, CommunityDetailFragment.KEY_COMMUNITY);
            } else if (obj instanceof Fragment) {
                stringParam = ParamUtils.getStringParam((Fragment) obj, CommunityDetailFragment.KEY_COMMUNITY);
            }
            NVObject nVObject = (NVObject) JacksonUtils.readAs(stringParam, objectType());
            if (nVObject != null) {
                setObject(nVObject);
            }
            this.sendRequestCause = 1;
            sendRequest();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        if (saveInstanceState()) {
            bundleOnSaveInstanceState.putString("response", JacksonUtils.safeWriteAsString(this.response));
            bundleOnSaveInstanceState.putString("errorMsg", this.errorMsg);
        }
        return bundleOnSaveInstanceState;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        return (this.response == null && this.errorMsg == null) ? false : true;
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        refreshMonitorStart(i, callback);
        this.errorMsg = null;
        this.sendRequestCause = 2;
        sendRequest();
        this.userListError = null;
        this.userListResponse = null;
        this.tipperListError = null;
        this.tipperListRequest = null;
        refreshMonitorEnd();
        notifyDataSetChanged();
    }

    public boolean isLoading() {
        return this.request != null;
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        if (getObject() == null) {
            return this.errorMsg;
        }
        return null;
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        refreshMonitorAbort();
        this.errorMsg = null;
        this.sendRequestCause = 3;
        sendRequest();
        notifyDataSetChanged();
    }

    public E getResponse() {
        return this.response;
    }

    public void setResponse(E e) {
        this.response = e;
        notifyDataSetChanged();
    }

    public T getObject() {
        E e = this.response;
        if (e == null) {
            return null;
        }
        return (T) e.object();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.cells = null;
        super.notifyDataSetChanged();
    }

    protected void sendRequest() {
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
        }
        this.request = createRequest();
        ApiRequest apiRequest2 = this.request;
        if (apiRequest2 != null) {
            apiService.exec(apiRequest2, this.listener);
        }
    }

    protected void onObjectResponse(ApiRequest apiRequest, E e) {
        this.errorMsg = null;
        setResponse(e);
    }

    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse) {
        this.errorMsg = str;
        notifyDataSetChanged();
    }

    protected ApiRequest createUserListRequest(int i, int i2) {
        throw new UnsupportedOperationException("you need to override createUserListRequest()");
    }

    protected ApiRequest createTipperListRequest(int i, int i2) {
        NVObject object = getObject();
        if (object == null) {
            return null;
        }
        return ApiRequest.builder().path(object.apiTypeName() + "/" + object.id() + "/tipping/tipped-users-summary").param(TtmlNode.START, Integer.valueOf(i)).param("size", Integer.valueOf(i2)).build();
    }

    public void splitSegments(String str, List<Media> list, List<Object> list2, List<Media> list3) {
        splitSegments(str, list, list2, list3, false);
    }

    public void splitSegments(String str, List<Media> list, List<Object> list2, List<Media> list3, boolean z) {
        List listEmptyList;
        if (TextUtils.isEmpty(str)) {
            if (showEmptyContent()) {
                list2.add(getContext().getString(R.string.empty_content));
            }
            if (list != null) {
                if (z) {
                    list2.addAll(list);
                    return;
                } else {
                    list3.addAll(list);
                    return;
                }
            }
            return;
        }
        List<Extractor.Entity> listExtractIMGsWithIndices = IMGUtils.extractIMGsWithIndices(str);
        if (listExtractIMGsWithIndices.isEmpty()) {
            if (z && list != null) {
                list2.addAll(list);
            }
            list2.add(str);
            if (z || list == null) {
                return;
            }
            list3.addAll(list);
            return;
        }
        if (list == null || list.isEmpty()) {
            listEmptyList = Collections.emptyList();
        } else {
            listEmptyList = new ArrayList(list);
        }
        int iIntValue = 0;
        for (Extractor.Entity entity : listExtractIMGsWithIndices) {
            String strTrim = str.substring(iIntValue, entity.getStart().intValue()).trim();
            if (strTrim.length() > 0) {
                list2.add(strTrim);
            }
            Iterator it = listEmptyList.iterator();
            while (true) {
                if (it.hasNext()) {
                    Media media = (Media) it.next();
                    if (entity.getValue().equals(media.refId)) {
                        it.remove();
                        list2.add(media);
                        break;
                    }
                }
            }
            iIntValue = entity.getEnd().intValue();
        }
        String strTrim2 = str.substring(iIntValue).trim();
        if (strTrim2.length() > 0) {
            list2.add(strTrim2);
        }
        if (z) {
            list2.addAll(listEmptyList);
        } else {
            list3.addAll(listEmptyList);
        }
    }

    private ArrayList<Object> cells() {
        if (this.cells == null && this.response != null) {
            ArrayList<Object> arrayList = new ArrayList<>();
            buildCells(arrayList);
            this.cells = arrayList;
        }
        return this.cells;
    }

    protected void getCellTypes(List<CellType> list) {
        list.add(DIVIDER);
        list.add(COMMENT_HEADER);
        list.add(COMMENT_ADD);
        list.add(LOADING);
        list.add(LIST_DIVIDER);
        list.add(DIVIDER_LINE);
        list.add(PADDING10);
        list.add(USER_GRID);
        list.add(TIPPING);
        list.add(new CellType((Class<?>) HeaderTag.class));
        list.add(new CellType((Class<?>) AddTag.class));
        list.add(new CellType((Class<?>) DateDivider.class));
        list.add(new CellType((Class<?>) Media.class));
        list.add(new CellType((Class<?>) String.class));
    }

    protected void setTextColor(View view, int i, int i2) {
        setTextColor(view, i, i2, -1);
    }

    protected void setTextColor(View view, int i, int i2, int i3) {
        if (this.darkTheme) {
            i2 = i3;
        }
        ViewUtils.setTextColor(view, i, i2);
    }

    protected void setImageStrokeColor(View view, int i, int i2) {
        if (this.darkTheme) {
            i2 = -1;
        }
        ViewUtils.setImageStrokeColor(view, i, i2);
    }

    protected void setTextColorSelector(View view, int i, int i2, int i3) {
        TextView textView = ViewUtils.getTextView(view, i);
        if (textView != null) {
            Context context = getContext();
            if (this.darkTheme) {
                i2 = i3;
            }
            textView.setTextColor(ContextCompat.getColor(context, i2));
        }
    }

    protected void setBackgroundColor(View view, int i, int i2, int i3) {
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            if (this.darkTheme) {
                i2 = i3;
            }
            viewFindViewById.setBackgroundResource(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected View getCell(Object obj, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
        User user;
        if (obj == DIVIDER) {
            DividerItem dividerItem = (DividerItem) createView(R.layout.detail_divider_item, viewGroup, view);
            NVObject object = getObject();
            dividerItem.setId(object != null ? object.id() : null);
            setTextColor(dividerItem, R.id.stub1, -5987164);
            setTextColor(dividerItem, R.id.stub2, -5987164);
            setTextColor(dividerItem, R.id.stub3, -5987164);
            setTextColor(dividerItem, R.id.stub4, -5987164);
            return dividerItem;
        }
        if (obj == COMMENT_HEADER) {
            View viewCreateView = createView(R.layout.detail_comment_header_item, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(getContext().getString(R.string.comments));
            viewCreateView.findViewById(R.id.comment_slides).setOnClickListener(this.subviewClickListener);
            ((TintButton) viewCreateView.findViewById(R.id.comment_slides)).setTintColor(!this.darkTheme ? -7829368 : -1);
            ((TintButton) viewCreateView.findViewById(R.id.user_comment_setting)).setTintColor(this.darkTheme ? -1 : -7829368);
            viewCreateView.findViewById(R.id.user_comment_setting).setVisibility(showUserCommentSetting() ? 0 : 8);
            viewCreateView.findViewById(R.id.user_comment_setting).setOnClickListener(this.subviewClickListener);
            viewCreateView.findViewById(R.id.cell_layout).setBackgroundColor(this.darkTheme ? getHeaderBackgroundColor() : ContextCompat.getColor(getContext(), R.color.header_color_light));
            setTextColor(viewCreateView, R.id.text, -7829368);
            setTextColor(viewCreateView, R.id.comment_count, -7829368);
            if (getObject() instanceof Feed) {
                TextView textView = (TextView) viewCreateView.findViewById(R.id.comment_count);
                textView.setText(((Feed) getObject()).getTotalCommentsCount() == 0 ? "" : "(" + ((Feed) getObject()).getTotalCommentsCount() + ")");
                textView.setOnClickListener(this.subviewClickListener);
                viewCreateView.findViewById(R.id.text).setOnClickListener(this.subviewClickListener);
            }
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
        if (obj == COMMENT_ADD) {
            View viewCreateView2 = createView(R.layout.detail_comment_add_item, viewGroup, view);
            viewCreateView2.findViewById(R.id.add_comment).setOnClickListener(this.subviewClickListener);
            NVObject object2 = getObject();
            if ((object2 instanceof Blog) && ((Blog) object2).type == 3) {
                ((TextView) viewCreateView2.findViewById(R.id.add_comment)).setText(getContext().getString(R.string.post_question_hint));
            }
            AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
            int communityId = ((ConfigService) getService("config")).getCommunityId();
            affiliationsService.contains(communityId);
            AccountService accountService = (AccountService) getService("account");
            User userProfile = accountService.getUserProfile();
            if (isGlobalInteractionScope()) {
                userProfile = accountService.getUserProfile(0);
            }
            UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView2.findViewById(R.id.user_avatar_layout);
            userAvatarLayout.setUser(userProfile);
            userAvatarLayout.setDarkTheme(this.darkTheme, this.backgroundColor, false);
            userAvatarLayout.setVisibility(affiliationsService.contains(communityId) ? 0 : 8);
            setTextColor(viewCreateView2, R.id.add_comment, -7829368);
            setBackgroundColor(viewCreateView2, R.id.add_comment, R.drawable.edit_round_add_comment_light, R.drawable.edit_round_add_comment_dark);
            return viewCreateView2;
        }
        if (obj == LOADING) {
            return createLoadingItem(viewGroup, view);
        }
        if (obj == LIST_DIVIDER) {
            return createView(R.layout.list_divider, viewGroup, view);
        }
        if (obj == DIVIDER_LINE) {
            View viewCreateView3 = createView(R.layout.detail_divider_line, viewGroup, view);
            viewCreateView3.findViewById(R.id.divider_line).setBackgroundColor(this.darkTheme ? -1 : 570425344);
            return viewCreateView3;
        }
        if (obj == PADDING10) {
            return createView(R.layout.detail_padding10, viewGroup, view);
        }
        if (obj == USER_GRID) {
            View viewCreateUserGridView = createUserGridView(view, viewGroup);
            TintButton tintButton = (TintButton) viewCreateUserGridView.findViewById(R.id.chevron_right);
            if (tintButton != null) {
                tintButton.setTintColor(this.darkTheme ? -1 : -7829368);
            }
            return viewCreateUserGridView;
        }
        if (obj == TIPPING) {
            if (this.tipCell == null) {
                this.tipCell = createView(R.layout.tipping_item, viewGroup, view);
            }
            TippingItem tippingItem = (TippingItem) this.tipCell.findViewById(R.id.tipping_item);
            NVObject object3 = getObject();
            if (object3 instanceof Tippable) {
                Tippable tippable = (Tippable) object3;
                TippingInfo tippingInfo = tippable.getTippingInfo();
                TipLogListResponse tipLogListResponse = this.tipLogListResponse;
                List<TipLog> list = tipLogListResponse != null ? tipLogListResponse.list() : null;
                if (this.tippingHelper == null) {
                    this.tippingHelper = new TippingHelper(this);
                }
                boolean zIsTipAuthor = this.tippingHelper.isTipAuthor(tippable);
                ArrayList arrayList = new ArrayList();
                if (list != null) {
                    for (TipLog tipLog : list) {
                        if (tipLog != null && (user = tipLog.tipper) != null) {
                            arrayList.add(user);
                        }
                    }
                }
                TipLogListResponse tipLogListResponse2 = this.tipLogListResponse;
                if (tipLogListResponse2 != null) {
                    TipSummary tipSummary = tipLogListResponse2.tipSummary;
                    if (tipSummary != null) {
                        i = tipSummary.tippersCount;
                    } else if (tippingInfo != null) {
                        i = tippingInfo.tippersCount;
                    }
                }
                tippingItem.setTippingInfo(tippingInfo, arrayList, zIsTipAuthor, i);
                tippingItem.setDarkTheme(this.darkTheme);
            }
            if (this.tipLogListResponse == null && this.tipperListError == null && this.tipperListRequest == null) {
                refreshTippingList();
            }
            setBackgroundColor(this.tipCell, R.id.divider, R.color.detail_divider_color, R.color.detail_divider_color_dark);
            this.tipCell.findViewById(R.id.tipping_box).setOnClickListener(this.subviewClickListener);
            ((LiveLayerOnlineBar) this.tipCell.findViewById(R.id.member_list)).setOnBarClickListener(this.subviewClickListener);
            this.tipCell.findViewById(R.id.tipped_count).setOnClickListener(this.subviewClickListener);
            return this.tipCell;
        }
        if (obj instanceof HeaderTag) {
            HeaderTag headerTag = (HeaderTag) obj;
            View viewCreateHeaderView = createHeaderView(headerTag.stringId, headerTag.count, view, viewGroup);
            if (getItem(0) == obj) {
                viewCreateHeaderView.setPadding(0, 0, 0, 0);
            }
            return viewCreateHeaderView;
        }
        if (obj instanceof AddTag) {
            View viewCreateView4 = createView(R.layout.detail_action_item, viewGroup, view);
            View viewFindViewById = viewCreateView4.findViewById(R.id.add_dec_container);
            int i = this.darkTheme ? R.drawable.item_add_desc_bg_white : R.drawable.item_add_desc_bg_grey;
            i = this.darkTheme ? -1 : -9605779;
            Drawable drawable = getContext().getResources().getDrawable(i);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this.subviewClickListener);
                viewFindViewById.setBackgroundDrawable(drawable);
            }
            ((TintButton) viewCreateView4.findViewById(R.id.ic_plus)).setTintColor(i);
            TextView textView2 = (TextView) viewCreateView4.findViewById(R.id.text);
            textView2.setText(((AddTag) obj).stringId);
            textView2.setTextColor(i);
            return viewCreateView4;
        }
        if (obj instanceof DateDivider) {
            View viewCreateView5 = createView(R.layout.detail_date_divider_item, viewGroup, view);
            if (viewCreateView5 instanceof DateDividerItem) {
                ((DateDividerItem) viewCreateView5).setDateDivider((DateDivider) obj);
                setTextColor(viewCreateView5, R.id.stub1, -5987164);
                setTextColor(viewCreateView5, R.id.stub2, -5987164);
                setTextColor(viewCreateView5, R.id.datetime, -5987164);
            }
            return viewCreateView5;
        }
        if (obj instanceof Media) {
            return createMediaView((Media) obj, view, viewGroup);
        }
        if (obj instanceof String) {
            return createTextView((String) obj, view, viewGroup);
        }
        return createErrorItem(viewGroup, view, String.valueOf(obj));
    }

    private void refreshTippingList() {
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.tipperListRequest;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
        }
        this.tipperListRequest = createTipperListRequest(0, this.tipperListSize);
        apiService.exec(this.tipperListRequest, this.tipperListListener);
    }

    @Override // com.narvii.monetization.store.TippingConfirmDialog.TipSuccessListener
    public void onTipSuccess() {
        if (this.tipCell == null) {
            return;
        }
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        if (userProfile != null && this.tipLogListResponse != null) {
            TipLog tipLog = new TipLog();
            tipLog.tipper = userProfile;
            tipLog.lastTippedTime = new Date(System.currentTimeMillis());
            TipLogListResponse tipLogListResponse = this.tipLogListResponse;
            if (tipLogListResponse.tippedUserList == null) {
                tipLogListResponse.tippedUserList = new ArrayList();
            }
            Utils.removeId(this.tipLogListResponse.list(), userProfile.id());
            this.tipLogListResponse.list().add(0, tipLog);
            notifyDataSetChanged();
        }
        refreshTippingList();
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj == USER_GRID) {
            if (view2 != null) {
                onUserGridClick(view2, null);
            }
            return true;
        }
        if (obj == COMMENT_HEADER && view2 != null) {
            if (view2.getId() == R.id.comment_slides) {
                final boolean z = (getObject() instanceof Blog) && ((Blog) getObject()).isGlobalAnnouncement;
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                if (!z) {
                    actionSheetDialog.addItem(R.string.comment_sort_top, commentSort() == 2 ? 4 : 8);
                }
                actionSheetDialog.addItem(R.string.comment_sort_newest, commentSort() == 0 ? 4 : 8);
                actionSheetDialog.addItem(R.string.comment_sort_oldest, commentSort() != 1 ? 8 : 4);
                actionSheetDialog.addItem(R.string.refresh, 0);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.detail.DetailAdapter.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        if (z) {
                            if (i2 == 0) {
                                DetailAdapter.this.setCommentSort(0);
                                return;
                            } else if (i2 == 1) {
                                DetailAdapter.this.setCommentSort(1);
                                return;
                            } else {
                                if (i2 != 2) {
                                    return;
                                }
                                DetailAdapter.this.commentRefresh();
                                return;
                            }
                        }
                        if (i2 == 0) {
                            DetailAdapter.this.setCommentSort(2);
                            return;
                        }
                        if (i2 == 1) {
                            DetailAdapter.this.setCommentSort(0);
                        } else if (i2 == 2) {
                            DetailAdapter.this.setCommentSort(1);
                        } else {
                            if (i2 != 3) {
                                return;
                            }
                            DetailAdapter.this.commentRefresh();
                        }
                    }
                });
                actionSheetDialog.show();
                return true;
            }
            if ((view2.getId() == R.id.comment_count || view2.getId() == R.id.text) && (getObject() instanceof Feed)) {
                Feed feed = (Feed) getObject();
                Intent commentIntent = CommentHelper.getCommentIntent(this, feed, false);
                commentIntent.putExtra("__communityId", isGlobalInteractionScope() ? 0 : getPublishNdcId());
                startActivity(commentIntent);
                if (feed.getTotalCommentsCount() == 0) {
                    this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
                }
                return true;
            }
            if (view2.getId() == R.id.user_comment_setting) {
                openCommentSetting();
                return true;
            }
        }
        if (obj == COMMENT_ADD) {
            commentNew();
            return true;
        }
        if (obj == TIPPING) {
            NVObject object = getObject();
            if (!(object instanceof Feed)) {
                return true;
            }
            Feed feed2 = (Feed) object;
            if (this.tippingHelper == null) {
                this.tippingHelper = new TippingHelper(this);
            }
            boolean zIsTipAuthor = this.tippingHelper.isTipAuthor(feed2);
            if (view2 != null && view2.getId() == R.id.tipping_box) {
                sendMainLogEvent(ActSemantic.prop);
                if (!((AccountService) getService("account")).hasAccount()) {
                    ensureLogin(new Intent("tipping"));
                    return true;
                }
                onTipBoxClicked(zIsTipAuthor);
                if (zIsTipAuthor) {
                    this.tippingHelper.source("Detailed Page");
                    this.tippingHelper.openTippingList(feed2, getCommunity(getPublishNdcId()));
                } else {
                    this.tippingHelper.source("Detailed Page");
                    this.tippingHelper.openTipDialog(feed2, this);
                }
            }
            if (view2 != null && (view2.getId() == R.id.member_list || view2.getId() == R.id.tipped_count)) {
                LogEvent.clickBuilder(getParentContext(), ActSemantic.listViewEnter).area("PropsGiverList").object(getObject()).send();
                this.tippingHelper.source("Detailed Page");
                this.tippingHelper.openTippingList(feed2, getCommunity(getPublishNdcId()));
            }
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    protected void openCommentSetting() {
        Intent intent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
        intent.putExtra("title", getContext().getString(R.string.comment_permission));
        intent.putExtra("subTitle", getContext().getString(R.string.allow_commenting_on_my_profile));
        intent.putExtra("privilegeKey", User.COMMENT);
        startActivity(intent);
    }

    protected Community getCommunity(int i) {
        Community community = ((CommunityService) this.context.getService("community")).getCommunity(i);
        if (community != null) {
            return community;
        }
        NVContext nVContext = this.context;
        if (nVContext instanceof NVFragment) {
            return (Community) JacksonUtils.readAs(((NVFragment) nVContext).getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        }
        return nVContext instanceof NVActivity ? (Community) JacksonUtils.readAs(((NVActivity) nVContext).getStringParam(RtcService.KEY_COMMUNITY), Community.class) : community;
    }

    protected int getPublishNdcId() {
        Feed feed = (Feed) getObject();
        if (feed == null) {
            return 0;
        }
        return feed instanceof Blog ? ((Blog) feed).getPublishNdcId() : feed.ndcId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendMainLogEvent(ActSemantic actSemantic) {
        LogEvent.clickBuilder(getParentContext(), actSemantic).area("EngagementArea").object(getObject()).send();
    }

    public View createTextView(String str, View view, ViewGroup viewGroup) {
        if (this.tagClickListener == null) {
            this.tagClickListener = new DetailTagClickListener();
        }
        return createTextView(str, R.layout.detail_text_item, view, viewGroup, true, this.tagClickListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View createTextView(String str, int i, View view, ViewGroup viewGroup, boolean z, OnTagClickListener onTagClickListener) {
        View viewCreateView = createView(i, viewGroup, view);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (TextUtils.isEmpty(str)) {
            str = null;
        } else if (z) {
            NVText nVText = new NVText(str);
            nVText.setDarkTheme(this.darkTheme);
            nVText.markAllEntries(onTagClickListener);
            if (onTagClickListener != null) {
                textView.setClickable(true);
                textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
            }
            str = nVText;
        }
        textView.setText(str, TextView.BufferType.SPANNABLE);
        setTextColor(viewCreateView, R.id.text, -11184811);
        return viewCreateView;
    }

    protected class DetailTagClickListener extends DefaultTagClickListener {
        protected DetailTagClickListener() {
        }

        @Override // com.narvii.util.text.DefaultTagClickListener
        protected void startActivity(View view, Intent intent) {
            DetailAdapter.this.startActivity(intent);
        }
    }

    public View createMediaView(Media media, View view, ViewGroup viewGroup) {
        return createMediaView(media, R.layout.detail_media_item, view, viewGroup);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View createMediaView(Media media, int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(i, viewGroup, view);
        NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.image);
        if (media.isVideo()) {
            nVImageView.maxHeightPercentage = 0.6f;
            nVImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        if (media != null && YoutubeUtils.isYtvScheme(media.url)) {
            nVImageView.defaultDrawable = null;
            nVImageView.defaultDrawableId = 0;
        } else {
            nVImageView.defaultDrawableId = this.darkTheme ? R.color.placeholder_lighter : R.color.placeholder;
        }
        if (nVImageView instanceof ISecretImage) {
            ((ISecretImage) nVImageView).setImageMedia(media, blurMedia());
        } else {
            nVImageView.setImageMedia(media);
        }
        final TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (textView.getVisibility() != 4) {
            textView.setText(media.caption);
            textView.setVisibility(TextUtils.isEmpty(media.caption) ? 8 : 0);
        }
        nVImageView.setOnClickListener(this.subviewClickListener);
        if ((nVImageView instanceof FlexSizeImageView) && textView.getVisibility() == 0) {
            ((FlexSizeImageView) nVImageView).setFlexSizeImageSetDimensionCallback(new FlexSizeImageView.IFlexSizeImageSetDimensionCallback() { // from class: com.narvii.detail.DetailAdapter.4
                @Override // com.narvii.widget.FlexSizeImageView.IFlexSizeImageSetDimensionCallback
                public void onSetMeasuredDimension(int i2, int i3) {
                    if (i2 != textView.getWidth()) {
                        textView.setWidth(i2);
                    }
                }
            });
        }
        ShareMediaBar shareMediaBar = (ShareMediaBar) viewCreateView.findViewById(R.id.share_media_bar);
        if (showShareMediaBar()) {
            shareMediaBar.source = "Post Detail";
            shareMediaBar.setVisibility(0);
            ArrayList arrayList = new ArrayList();
            Iterator<Object> it = this.cells.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof Media) {
                    arrayList.add((Media) next);
                }
            }
            shareMediaBar.setMedia(getObject(), media, arrayList);
            if (getObject() instanceof Feed) {
                shareMediaBar.setRepostButton(new BaseShareButtonRepost(this.context) { // from class: com.narvii.detail.DetailAdapter.5
                    @Override // com.narvii.share.ShareButtonCustomInfo
                    public void onClick(SharePayload sharePayload) {
                        new FeedHelper(((NVAdapter) DetailAdapter.this).context).source("Post Detail Media Bar").repost((Feed) DetailAdapter.this.getObject());
                    }
                });
            }
            View viewFindViewById = shareMediaBar.findViewById(R.id.share_media_entry);
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            layoutParams.height = (int) Utils.dpToPx(this.context.getContext(), 25.0f);
            layoutParams.width = (int) Utils.dpToPx(this.context.getContext(), 25.0f);
            int iDpToPx = (int) Utils.dpToPx(this.context.getContext(), 4.0f);
            viewFindViewById.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
            viewFindViewById.setLayoutParams(layoutParams);
        } else {
            shareMediaBar.setVisibility(8);
        }
        return viewCreateView;
    }

    public View createHeaderView(CharSequence charSequence, int i, View view, ViewGroup viewGroup) {
        String str;
        View viewCreateView = createView(R.layout.detail_header_item_top_margin, viewGroup, view);
        View viewFindViewById = viewCreateView.findViewById(R.id.header_layout);
        if (viewFindViewById != null) {
            viewFindViewById.setBackgroundColor(this.darkTheme ? getHeaderBackgroundColor() : ContextCompat.getColor(getContext(), R.color.header_color_light));
        }
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (textView != null) {
            textView.setText(charSequence);
            textView.setTextColor(this.darkTheme ? -1 : -7829368);
        }
        TextView textView2 = (TextView) viewCreateView.findViewById(R.id.header_count);
        if (textView2 != null) {
            if (i < 1) {
                str = "";
            } else {
                str = "(" + i + ")";
            }
            textView2.setText(str);
            textView2.setTextColor(this.darkTheme ? -1 : -7829368);
        }
        return viewCreateView;
    }

    public View createHeaderView(int i, int i2, View view, ViewGroup viewGroup) {
        return createHeaderView(getContext().getText(i), i2, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.response == null) {
            return 0;
        }
        return cells().size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (i < this.cells.size()) {
            return this.cells.get(i);
        }
        this.cells.size();
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        if (getItem(i) == null) {
            return 0L;
        }
        return r3.hashCode();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        Object item = getItem(i);
        if (item == null) {
            return 0;
        }
        for (int size = this.cellTypes.size(); size > 0; size--) {
            if (this.cellTypes.get(size - 1).isType(item)) {
                return size;
            }
        }
        Log.e("unknown cell type: " + item);
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.cellTypes.size() + 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        Object item = getItem(i);
        if (item == null) {
            return false;
        }
        if (item instanceof CellType) {
            return ((CellType) item).isEnabled;
        }
        Iterator<CellType> it = this.cellTypes.iterator();
        while (it.hasNext()) {
            CellType next = it.next();
            if (next.clazz != null && next.isType(item)) {
                return next.isEnabled;
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return getCell(getItem(i), view, viewGroup);
    }

    public void commentNew() {
        commentNew(null);
    }

    public void commentNew(String str) {
        NVObject object = getObject();
        if (object == null) {
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
        intent.putExtra("parentType", object.objectType());
        intent.putExtra("parentId", object.id());
        if (object instanceof Blog) {
            intent.putExtra("parentSubType", ((Blog) object).type);
        }
        if (object instanceof Feed) {
            intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(object));
        }
        intent.putExtra("stat_parent_type", StatisticHelper.getStatisticSource(this, object, 1));
        intent.putExtra("Source", this.source);
        LoggingSource loggingSource = this.loggingSource;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, loggingSource == null ? null : loggingSource.name());
        LoggingOrigin loggingOrigin = this.loggingOrigin;
        intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
        intent.putExtra("autoJoin", allowAutoJoin());
        intent.putExtra(CommentListFragment.COMMENT_KEY_SHOW_EMOJI_ONLY, showEmojiOnly());
        intent.putExtra("stickerCollectionId", str);
        startActivity(intent);
        this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
    }

    public void onNotification(Notification notification) {
        if (!(notification.obj instanceof User) || notification.parentId == null || this.userListResponse == null) {
            return;
        }
        String str = notification.action;
        if (str == "new" || str == "delete") {
            try {
                if (createUserListRequest(0, this.userListSize).url().contains(notification.parentId)) {
                    Utils.removeId(this.userListResponse.list(), ((User) notification.obj).uid);
                    if (notification.action == "new") {
                        this.userListResponse.list().add(0, (User) notification.obj);
                    }
                    notifyDataSetChanged();
                }
            } catch (Exception e) {
                Log.w("fail to update userList", e);
            }
        }
    }

    protected View createUserGridView(View view, ViewGroup viewGroup) throws Resources.NotFoundException {
        if (this.columnSize == 0) {
            Resources resources = viewGroup.getResources();
            int iDpToPx = (int) (resources.getDisplayMetrics().widthPixels - Utils.dpToPx(viewGroup.getContext(), 20.0f));
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.detail_likes_size);
            this.columnSize = Math.max(6, Math.min(12, iDpToPx / ((resources.getDimensionPixelSize(R.dimen.detail_likes_margin) * 2) + dimensionPixelSize)));
            int i = this.columnSize;
            this.userListSize = this.rawSize * i;
            this.userListMargin = Math.max(1, ((iDpToPx - (dimensionPixelSize * i)) / 2) / i);
        }
        if (this.userListResponse == null) {
            if (this.userListError != null) {
                if (view != null && "userGridError".equals(view.getTag())) {
                    return view;
                }
                View viewCreateErrorItem = createErrorItem(viewGroup, null, this.userListError);
                viewCreateErrorItem.setTag("userGridError");
                return viewCreateErrorItem;
            }
            if (this.userListRequest == null) {
                this.userListRequest = createUserListRequest(0, this.userListSize * 3);
                ((ApiService) getService("api")).exec(this.userListRequest, this.userListListener);
            }
            if (view != null && "userGridLoading".equals(view.getTag())) {
                return view;
            }
            View viewCreateLoadingItem = createLoadingItem(viewGroup, null);
            viewCreateLoadingItem.setTag("userGridLoading");
            return viewCreateLoadingItem;
        }
        if (view == null || !"userGrid".equals(view.getTag())) {
            view = createView(R.layout.detail_likes_item, viewGroup, null);
            view.setTag("userGrid");
        }
        LogUtils.setShownInAdapter(view, this);
        view.setTag(R.id._contains_gridlayout, true);
        GridLayout gridLayout = (GridLayout) view.findViewById(R.id.grid);
        gridLayout.setColumnCount(this.columnSize);
        gridLayout.setRowCount(this.rawSize);
        int i2 = 0;
        while (i2 < this.userListSize) {
            User user = (this.userListResponse.list() == null || this.userListResponse.list().size() <= i2) ? null : this.userListResponse.list().get(i2);
            View childAt = gridLayout.getChildCount() > i2 ? gridLayout.getChildAt(i2) : null;
            if (user != null) {
                if (childAt == null) {
                    if (i2 == this.userListSize - 1) {
                        childAt = this.inflater.inflate(R.layout.detail_likes_user_more_item, (ViewGroup) gridLayout, false);
                    } else {
                        childAt = this.inflater.inflate(R.layout.detail_likes_user_item, (ViewGroup) gridLayout, false);
                    }
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                    if (Build.VERSION.SDK_INT < 17) {
                        int i3 = this.userListMargin;
                        marginLayoutParams.leftMargin = i3;
                        marginLayoutParams.rightMargin = i3;
                    } else {
                        marginLayoutParams.setMarginStart(this.userListMargin);
                        marginLayoutParams.setMarginEnd(this.userListMargin);
                    }
                    gridLayout.addView(childAt);
                }
                LogUtils.setAttachedObject(childAt, user);
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) childAt.findViewById(R.id.user_avatar_layout);
                userAvatarLayout.disableFullAvatarFrame = true;
                userAvatarLayout.setUser(user);
                childAt.setVisibility(0);
                childAt.setTag(user);
                childAt.setOnClickListener(this.subviewClickListener);
                ImageView imageView = (ImageView) childAt.findViewById(R.id.avatar_badge);
                if (imageView != null) {
                    imageView.setImageDrawable(((RankingService) this.context.getService(Module.MODULE_RANKING)).getInfluencerOrRankingBadge(user));
                }
                if (i2 == this.userListSize - 1) {
                    View viewFindViewById = childAt.findViewById(R.id.more);
                    boolean z = this.userListResponse.list().size() > this.userListSize;
                    if (viewFindViewById != null) {
                        if (z) {
                            if (imageView != null) {
                                imageView.setImageDrawable(null);
                            }
                            childAt.setTag(null);
                        }
                        viewFindViewById.setVisibility(z ? 0 : 8);
                        if (z) {
                            LogUtils.setAttachedObject(childAt, null);
                        }
                    }
                }
            } else if (childAt != null) {
                childAt.setVisibility(8);
            }
            i2++;
        }
        return view;
    }

    protected boolean onUserGridClick(View view, String str) {
        if (view == null) {
            if (this.userListError == null) {
                return false;
            }
            this.userListError = null;
            this.userListRequest = null;
            notifyDataSetChanged();
            return true;
        }
        if (!(view.getTag() instanceof User)) {
            return false;
        }
        User user = (User) view.getTag();
        getClickEventBuilder(this.userIPC, user, ActSemantic.checkDetail).send();
        Intent intent = UserProfileFragment.intent(this, user);
        if (intent == null) {
            return true;
        }
        if (str == null) {
            str = this.source;
        }
        intent.putExtra("Source", str);
        startActivity(intent);
        return true;
    }

    public boolean allowTipping() {
        return allowTipping(true);
    }

    public boolean allowTipping(boolean z) {
        Tippable tippable;
        TippingInfo tippingInfo;
        Cloneable object = getObject();
        if (!(object instanceof Tippable) || (tippingInfo = (tippable = (Tippable) object).getTippingInfo()) == null) {
            return false;
        }
        User tipAuthor = tippable.getTipAuthor();
        boolean z2 = tipAuthor != null && Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), tipAuthor.id());
        if (z) {
            if (!z2 && !tippingInfo.tippable) {
                return false;
            }
            if (z2 && !tippingInfo.tippable && tippingInfo.tippedCoins == 0) {
                return false;
            }
        } else if (!tippingInfo.tippable) {
            return false;
        }
        return (tipAuthor == null || tipAuthor.isAminoRole()) ? false : true;
    }
}
