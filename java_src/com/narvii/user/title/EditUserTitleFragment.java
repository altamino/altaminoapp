package com.narvii.user.title;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserTitle;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.user.title.AddUserTitleFlowLayout;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.BubbleBackground;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVStatusLayout;
import com.narvii.widget.ScrollDetectFrameLayout;
import com.narvii.widget.ScrollViewWithMaxHeight;
import com.narvii.widget.recycleview.layoutmanager.FlowLayoutManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class EditUserTitleFragment extends NVFragment implements FragmentOnBackListener, FragmentWillFinishListener {
    public static final int HEIGHT_MAX_LINES = 3;
    public static final int REQUEST_COLOR_PICKER = 109;
    private HashSet<UserTitle> allTitleHashSet;
    private Animation animation;
    int cid;
    public TextView countView;
    private TextView limitAlertView;
    private RecyclerView recyclerView;
    boolean scrollToBottom;
    public ScrollViewWithMaxHeight scrollView;
    String searchKeyword;
    private SearchTitleTask searchTask;
    private AddUserTitleFlowLayout selectedTitleFlowLayout;
    private NVStatusLayout statusLayout;
    public View submitButton;
    TextView title;
    User user;
    public UserTitleRepository userTitleRepository;
    private UserTitlesAdapter userTitlesAdapter;
    List<UserTitle> submittedTitleList = new ArrayList();
    List<UserTitle> allTitleList = new ArrayList();

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_edit_user_title, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.edit_titles);
        this.cid = ((ConfigService) getService("config")).getCommunityId();
        this.user = (User) JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        if (this.user == null) {
            finish();
            return;
        }
        this.userTitleRepository = new UserTitleRepository(this, this.cid);
        this.submittedTitleList = this.user.customTitles();
        getActivity().getWindow().setSoftInputMode(48);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        ((ImageView) getActivity().getActionBar().getCustomView().findViewById(R.id.actionbar_back)).setImageResource(R.drawable.ic_back_cross);
        if (getActivity() instanceof FragmentWrapperActivity) {
            FragmentWrapperActivity fragmentWrapperActivity = (FragmentWrapperActivity) getActivity();
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.submit_action_button, (ViewGroup) null);
            this.submitButton = viewInflate.findViewById(R.id.submit);
            fragmentWrapperActivity.setActionBarRightView(viewInflate);
            this.submitButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.title.EditUserTitleFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    EditUserTitleFragment.this.submitTitles();
                }
            });
            this.submitButton.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void submitTitles() {
        final ArrayList arrayList;
        AddUserTitleFlowLayout addUserTitleFlowLayout = this.selectedTitleFlowLayout;
        if (addUserTitleFlowLayout != null) {
            List<UserTitle> list = addUserTitleFlowLayout.selectedTagList;
            if (list != null) {
                arrayList = new ArrayList(list);
            } else {
                arrayList = new ArrayList();
            }
            if (this.selectedTitleFlowLayout.getEditText() != null) {
                String strTrim = this.selectedTitleFlowLayout.getEditText().getText().toString().trim();
                if (!TextUtils.isEmpty(strTrim)) {
                    arrayList.add(new UserTitle(strTrim));
                }
            }
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            this.userTitleRepository.adminUserTitleList(this.user.uid(), arrayList, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.title.EditUserTitleFragment.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    User user = EditUserTitleFragment.this.user;
                    if (user.extensions == null) {
                        user.extensions = JacksonUtils.createObjectNode();
                    }
                    List list2 = arrayList;
                    if (list2 != null) {
                        EditUserTitleFragment.this.user.extensions.put("customTitles", (ArrayNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(list2));
                    } else {
                        EditUserTitleFragment.this.user.extensions.remove("customTitles");
                    }
                    ((NotificationCenter) EditUserTitleFragment.this.getService("notification")).sendNotification(new Notification("update", EditUserTitleFragment.this.user));
                    if (EditUserTitleFragment.this.getActivity() != null) {
                        ProgressDialog progressDialog2 = progressDialog;
                        if (progressDialog2 != null) {
                            progressDialog2.dismiss();
                        }
                        EditUserTitleFragment.this.finish();
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list2, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list2, str, apiResponse, th);
                    if (EditUserTitleFragment.this.getActivity() == null) {
                        return;
                    }
                    ProgressDialog progressDialog2 = progressDialog;
                    if (progressDialog2 != null) {
                        progressDialog2.dismiss();
                    }
                    NVToast.makeText(EditUserTitleFragment.this.getContext(), str, 1).show();
                }
            });
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(final NVActivity nVActivity) {
        if (!(nVActivity instanceof FragmentWrapperActivity) || !anyChanges()) {
            return false;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(nVActivity);
        actionSheetDialog.addItem(R.string.discard_changes, true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.title.EditUserTitleFragment.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i != 0) {
                    return;
                }
                nVActivity.finish();
            }
        });
        actionSheetDialog.show();
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.user == null) {
            return;
        }
        NVImageView nVImageView = (NVImageView) getView().findViewById(R.id.background);
        BubbleBackground bubbleBackground = (BubbleBackground) getView().findViewById(R.id.bubble);
        ArrayList<Media> slideShowMedias = this.user.getSlideShowMedias();
        if (!CollectionUtils.isEmpty(slideShowMedias)) {
            nVImageView.setImageMedia(slideShowMedias.get(0));
            nVImageView.setVisibility(0);
            bubbleBackground.setVisibility(8);
        } else {
            nVImageView.setVisibility(8);
            bubbleBackground.setVisibility(0);
            bubbleBackground.set(this.user.id());
        }
        FlowLayoutManager flowLayoutManager = new FlowLayoutManager(1);
        this.recyclerView = (RecyclerView) getView().findViewById(R.id.recycler);
        this.recyclerView.setLayoutManager(flowLayoutManager);
        this.recyclerView.setItemAnimator(new DefaultItemAnimator());
        ((ScrollDetectFrameLayout) getView().findViewById(R.id.scroll_detect)).setScrollDetectListener(new ScrollDetectFrameLayout.ScrollDetectListener() { // from class: com.narvii.user.title.EditUserTitleFragment.4
            @Override // com.narvii.widget.ScrollDetectFrameLayout.ScrollDetectListener
            public void onScrollChecked() {
                SoftKeyboard.hideSoftKeyboard(EditUserTitleFragment.this.getContext());
            }
        });
        this.selectedTitleFlowLayout = (AddUserTitleFlowLayout) getView().findViewById(R.id.user_tile_flow_layout);
        this.selectedTitleFlowLayout.setTagEditListener(new AddUserTitleFlowLayout.TagEditListener() { // from class: com.narvii.user.title.EditUserTitleFragment.5
            @Override // com.narvii.user.title.AddUserTitleFlowLayout.TagEditListener
            public void afterTextChangedNotEmpty(String str) {
                EditUserTitleFragment.this.changeSubmitStatus();
                boolean z = str.length() > 20;
                EditUserTitleFragment.this.limitAlertView.setVisibility(z ? 0 : 8);
                if (EditUserTitleFragment.this.searchTask != null) {
                    EditUserTitleFragment.this.searchTask.cancel(false);
                }
                if (z) {
                    EditUserTitleFragment.this.goToSearchResultPage(null);
                } else {
                    EditUserTitleFragment editUserTitleFragment = EditUserTitleFragment.this;
                    editUserTitleFragment.searchKeyword = str;
                    editUserTitleFragment.searchTask = editUserTitleFragment.new SearchTitleTask(editUserTitleFragment.allTitleList, editUserTitleFragment.searchKeyword);
                    EditUserTitleFragment.this.searchTask.execute(new Void[0]);
                }
                Utils.post(new Runnable() { // from class: com.narvii.user.title.EditUserTitleFragment.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        EditUserTitleFragment.this.scrollToBottom();
                    }
                });
            }

            @Override // com.narvii.user.title.AddUserTitleFlowLayout.TagEditListener
            public void afterTextChangedEmpty() {
                EditUserTitleFragment.this.changeSubmitStatus();
                EditUserTitleFragment.this.goToAllTagListPage();
                Utils.post(new Runnable() { // from class: com.narvii.user.title.EditUserTitleFragment.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        EditUserTitleFragment.this.scrollToBottom();
                    }
                });
            }

            @Override // com.narvii.user.title.AddUserTitleFlowLayout.TagEditListener
            public void onSaveTextBeyondLimit() {
                if (EditUserTitleFragment.this.limitAlertView != null) {
                    if (EditUserTitleFragment.this.animation == null) {
                        EditUserTitleFragment editUserTitleFragment = EditUserTitleFragment.this;
                        editUserTitleFragment.animation = AnimationUtils.loadAnimation(editUserTitleFragment.getContext(), R.anim.alert_shake);
                    }
                    EditUserTitleFragment.this.limitAlertView.startAnimation(EditUserTitleFragment.this.animation);
                }
            }
        });
        this.selectedTitleFlowLayout.setUserTitleTransformer(new AddUserTitleFlowLayout.UserTitleTransformer() { // from class: com.narvii.user.title.EditUserTitleFragment.6
            @Override // com.narvii.user.title.AddUserTitleFlowLayout.UserTitleTransformer
            public UserTitle transform(UserTitle userTitle) {
                int iIndexOf = EditUserTitleFragment.this.allTitleList.indexOf(userTitle);
                if (iIndexOf == -1) {
                    return userTitle;
                }
                UserTitle userTitle2 = EditUserTitleFragment.this.allTitleList.get(iIndexOf);
                EditUserTitleFragment.this.allTitleList.remove(iIndexOf);
                return userTitle2;
            }
        });
        this.selectedTitleFlowLayout.setUserTitleColorEditListener(new AddUserTitleFlowLayout.UserTitleColorEditListener() { // from class: com.narvii.user.title.EditUserTitleFragment.7
            @Override // com.narvii.user.title.AddUserTitleFlowLayout.UserTitleColorEditListener
            public void startEditColor(UserTitle userTitle) {
                Intent intent = FragmentWrapperActivity.intent(UserTitleColorPickerFragment.class);
                intent.putExtra("userTitle", JacksonUtils.writeAsString(userTitle));
                EditUserTitleFragment.this.startActivityForResult(intent, 109);
            }
        });
        this.selectedTitleFlowLayout.setOnTagRemovedListener(new AddUserTitleFlowLayout.onTagRemovedListener() { // from class: com.narvii.user.title.EditUserTitleFragment.8
            @Override // com.narvii.user.title.AddUserTitleFlowLayout.onTagRemovedListener
            public void onTagRemoved(UserTitle userTitle) {
                int iBinarySearch;
                if (!EditUserTitleFragment.this.allTitleHashSet.contains(userTitle) || (iBinarySearch = Collections.binarySearch(EditUserTitleFragment.this.allTitleList, userTitle)) >= 0) {
                    return;
                }
                int i = (-iBinarySearch) - 1;
                EditUserTitleFragment.this.allTitleList.add(i, userTitle);
                EditUserTitleFragment.this.userTitlesAdapter.notifyItemInserted(i);
            }
        });
        this.selectedTitleFlowLayout.setOnSelectedChangedListener(new AddUserTitleFlowLayout.onSelectedChangedListener() { // from class: com.narvii.user.title.EditUserTitleFragment.9
            @Override // com.narvii.user.title.AddUserTitleFlowLayout.onSelectedChangedListener
            public void onChanged(List<UserTitle> list) {
                EditUserTitleFragment.this.updateCountView(list);
                EditUserTitleFragment.this.changeSubmitStatus();
            }
        });
        this.selectedTitleFlowLayout.addUserTitleList(this.submittedTitleList);
        this.statusLayout = (NVStatusLayout) getView().findViewById(R.id.status_layout);
        this.statusLayout.setOnErrorRetryListener(new NVStatusLayout.onErrorRetryListener() { // from class: com.narvii.user.title.EditUserTitleFragment.10
            @Override // com.narvii.widget.NVStatusLayout.onErrorRetryListener
            public void onErrorRetry() {
                EditUserTitleFragment.this.sendRequest();
            }
        });
        this.limitAlertView = (TextView) getView().findViewById(R.id.limit_alert);
        this.limitAlertView.setText(getString(R.string.user_title_char_limit, 20));
        this.countView = (TextView) getView().findViewById(R.id.selected_count);
        updateCountView(this.submittedTitleList);
        ((NVImageView) getView().findViewById(R.id.avatar)).setImageUrl(this.user.icon);
        this.scrollView = (ScrollViewWithMaxHeight) view.findViewById(R.id.scroll_max_height);
        this.scrollView.setMaxHeight((getResources().getDimensionPixelSize(R.dimen.user_title_big_height) + (getResources().getDimensionPixelSize(R.dimen.user_title_big_margin_v) * 2)) * 3);
        if (CollectionUtils.getSize(this.submittedTitleList) < 20) {
            this.scrollView.post(new Runnable() { // from class: com.narvii.user.title.EditUserTitleFragment.11
                @Override // java.lang.Runnable
                public void run() {
                    EditUserTitleFragment.this.scrollView.fullScroll(130);
                }
            });
        }
        this.scrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.narvii.user.title.EditUserTitleFragment.12
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                EditUserTitleFragment editUserTitleFragment = EditUserTitleFragment.this;
                if (editUserTitleFragment.scrollToBottom) {
                    editUserTitleFragment.scrollToBottom = false;
                    ViewUtils.scrollToBottom(editUserTitleFragment.scrollView);
                }
            }
        });
        this.scrollView.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.user.title.EditUserTitleFragment.13
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent == null || motionEvent.getAction() != 2) {
                    return false;
                }
                try {
                    if (!((InputMethodManager) EditUserTitleFragment.this.getContext().getSystemService("input_method")).isAcceptingText()) {
                        return false;
                    }
                    SoftKeyboard.hideSoftKeyboard(EditUserTitleFragment.this.getContext());
                    return false;
                } catch (Exception e) {
                    Log.e("fail to hide keyboard", e);
                    return false;
                }
            }
        });
        this.title = (TextView) view.findViewById(R.id.list_title);
        sendRequest();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 109 && i2 == -1) {
            this.selectedTitleFlowLayout.updateUserTitle((UserTitle) JacksonUtils.readAs(intent.getStringExtra("userTitle"), UserTitle.class));
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCountView(List<UserTitle> list) {
        if (this.countView != null) {
            String str = CollectionUtils.getSize(list) + "";
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str + "/20");
            spannableStringBuilder.setSpan(new ForegroundColorSpan(-1), 0, str.length(), 33);
            this.countView.setText(spannableStringBuilder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeSubmitStatus() {
        View view = this.submitButton;
        if (view != null) {
            view.setEnabled(canSubmitEnable());
        }
    }

    private boolean isEditTextEmpty() {
        AddUserTitleFlowLayout addUserTitleFlowLayout = this.selectedTitleFlowLayout;
        return addUserTitleFlowLayout == null || addUserTitleFlowLayout.getEditText() == null || TextUtils.isEmpty(this.selectedTitleFlowLayout.getEditText().getText().toString());
    }

    private boolean isEditTextBeyondLimit() {
        AddUserTitleFlowLayout addUserTitleFlowLayout = this.selectedTitleFlowLayout;
        return (addUserTitleFlowLayout == null || addUserTitleFlowLayout.getEditText() == null || this.selectedTitleFlowLayout.getEditText().getText().length() <= 20) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToBottom() {
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = this.scrollView;
        if (scrollViewWithMaxHeight == null) {
            return;
        }
        if (scrollViewWithMaxHeight.isLayoutRequested()) {
            this.scrollToBottom = true;
        } else {
            ViewUtils.scrollToBottom(this.scrollView);
        }
    }

    private boolean isTagListChanged() {
        boolean zEquals;
        List<UserTitle> list = this.submittedTitleList;
        if (list == null) {
            zEquals = CollectionUtils.getSize(this.selectedTitleFlowLayout.selectedTagList) == 0;
        } else {
            zEquals = list.equals(this.selectedTitleFlowLayout.selectedTagList);
        }
        return !zEquals;
    }

    private boolean canSubmitEnable() {
        if (isEditTextBeyondLimit()) {
            return false;
        }
        if (isEditTextEmpty()) {
            return isTagListChanged();
        }
        return true;
    }

    private boolean anyChanges() {
        if (isEditTextEmpty()) {
            return isTagListChanged();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToAllTagListPage() {
        this.searchKeyword = null;
        TextView textView = this.title;
        if (textView != null) {
            textView.setText(R.string.all_created_titles);
            this.title.setVisibility(CollectionUtils.isEmpty(this.allTitleList) ? 8 : 0);
        }
        this.userTitlesAdapter = new UserTitlesAdapter(this.cid, this.allTitleList);
        this.recyclerView.setAdapter(this.userTitlesAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToSearchResultPage(List<UserTitle> list) {
        TextView textView = this.title;
        if (textView != null) {
            textView.setText(R.string.matched_results);
            this.title.setVisibility(CollectionUtils.isEmpty(list) ? 8 : 0);
        }
        this.userTitlesAdapter = new UserTitlesAdapter(this.cid, list);
        this.recyclerView.setAdapter(this.userTitlesAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequest() {
        this.statusLayout.showLoading();
        this.userTitleRepository.getAllUserTitleList(new ApiResponseListener<CommunityUseTitleListResponse>(CommunityUseTitleListResponse.class) { // from class: com.narvii.user.title.EditUserTitleFragment.14
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityUseTitleListResponse communityUseTitleListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) communityUseTitleListResponse);
                EditUserTitleFragment.this.statusLayout.showContent();
                EditUserTitleFragment.this.allTitleHashSet = new HashSet();
                if (communityUseTitleListResponse.titles != null) {
                    EditUserTitleFragment.this.allTitleHashSet.addAll(communityUseTitleListResponse.titles);
                }
                EditUserTitleFragment editUserTitleFragment = EditUserTitleFragment.this;
                editUserTitleFragment.allTitleList = new ArrayList(editUserTitleFragment.allTitleHashSet);
                Collections.sort(EditUserTitleFragment.this.allTitleList);
                List<UserTitle> list = EditUserTitleFragment.this.submittedTitleList;
                if (list != null) {
                    Iterator<UserTitle> it = list.iterator();
                    while (it.hasNext()) {
                        EditUserTitleFragment.this.allTitleList.remove(it.next());
                    }
                }
                EditUserTitleFragment editUserTitleFragment2 = EditUserTitleFragment.this;
                if (editUserTitleFragment2.allTitleList == null) {
                    editUserTitleFragment2.allTitleList = new ArrayList();
                }
                EditUserTitleFragment editUserTitleFragment3 = EditUserTitleFragment.this;
                editUserTitleFragment3.userTitlesAdapter = editUserTitleFragment3.new UserTitlesAdapter(editUserTitleFragment3.cid, editUserTitleFragment3.allTitleList);
                EditUserTitleFragment.this.recyclerView.setAdapter(EditUserTitleFragment.this.userTitlesAdapter);
                EditText editText = EditUserTitleFragment.this.selectedTitleFlowLayout.getEditText();
                if (editText != null) {
                    SoftKeyboard.showSoftKeyboard(editText);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                EditUserTitleFragment.this.statusLayout.showError(str);
            }
        });
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        SoftKeyboard.hideSoftKeyboard(getContext());
    }

    public class SearchTitleTask extends AsyncTask<Void, Void, List<UserTitle>> {
        List<UserTitle> allTagList;
        String keyword;

        public SearchTitleTask(List<UserTitle> list, String str) {
            this.allTagList = list;
            this.keyword = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<UserTitle> doInBackground(Void... voidArr) {
            String str;
            ArrayList arrayList = new ArrayList();
            List<UserTitle> list = this.allTagList;
            if (list != null) {
                Iterator it = new ArrayList(list).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    UserTitle userTitle = (UserTitle) it.next();
                    if (isCancelled()) {
                        Log.d("search community task is cancelled");
                        break;
                    }
                    if (userTitle != null && (str = userTitle.title) != null && str.toLowerCase(Locale.US).contains(this.keyword.toLowerCase(Locale.US))) {
                        arrayList.add(userTitle);
                    }
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<UserTitle> list) {
            if (Utils.isStringEquals(EditUserTitleFragment.this.searchKeyword, this.keyword)) {
                EditUserTitleFragment.this.goToSearchResultPage(list);
            }
        }
    }

    public class UserTitlesAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        int cid;
        List<UserTitle> list;

        public UserTitlesAdapter(int i, List<UserTitle> list) {
            this.cid = i;
            this.list = list;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new CommunityTagViewHolder(LayoutInflater.from(EditUserTitleFragment.this.getContext()).inflate(R.layout.user_title_view_big, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(final RecyclerView.ViewHolder viewHolder, int i) {
            int iIndexOf;
            if (viewHolder instanceof CommunityTagViewHolder) {
                UserTitle userTitle = this.list.get(i);
                if (userTitle instanceof UserTitle) {
                    String str = userTitle.title;
                    TextView textView = (TextView) viewHolder.itemView.findViewById(R.id.title);
                    if (str == null) {
                        textView.setText((CharSequence) null);
                    } else if (EditUserTitleFragment.this.searchKeyword != null) {
                        SpannableString spannableString = new SpannableString(str);
                        int length = 0;
                        String lowerCase = str.toLowerCase(Locale.US);
                        String lowerCase2 = EditUserTitleFragment.this.searchKeyword.toLowerCase(Locale.US);
                        while (length < lowerCase.length() && (iIndexOf = lowerCase.indexOf(lowerCase2, length)) != -1) {
                            spannableString.setSpan(new ForegroundColorSpan(-16724355), iIndexOf, EditUserTitleFragment.this.searchKeyword.length() + iIndexOf, 33);
                            length = iIndexOf + EditUserTitleFragment.this.searchKeyword.length();
                        }
                        textView.setText(spannableString);
                    } else {
                        textView.setText(str);
                    }
                    textView.setBackgroundResource(R.drawable.user_title_white_stroke);
                    viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.title.EditUserTitleFragment.UserTitlesAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            int adapterPosition = viewHolder.getAdapterPosition();
                            if (adapterPosition < 0 || adapterPosition >= UserTitlesAdapter.this.list.size() || !(UserTitlesAdapter.this.list.get(adapterPosition) instanceof UserTitle)) {
                                return;
                            }
                            if (EditUserTitleFragment.this.selectedTitleFlowLayout.selectedTagList.size() == 20) {
                                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(EditUserTitleFragment.this.getContext());
                                aCMAlertDialog.setMessage(EditUserTitleFragment.this.getString(R.string.choose_user_title_max_alert, 20));
                                aCMAlertDialog.addButton(android.R.string.ok, null);
                                aCMAlertDialog.show();
                                return;
                            }
                            UserTitle userTitle2 = UserTitlesAdapter.this.list.get(adapterPosition);
                            UserTitlesAdapter.this.list.remove(adapterPosition);
                            UserTitlesAdapter.this.notifyItemRemoved(adapterPosition);
                            String str2 = EditUserTitleFragment.this.searchKeyword;
                            EditUserTitleFragment editUserTitleFragment = EditUserTitleFragment.this;
                            if (editUserTitleFragment.searchKeyword != null) {
                                editUserTitleFragment.allTitleList.remove(userTitle2);
                                EditUserTitleFragment.this.goToAllTagListPage();
                            }
                            EditUserTitleFragment.this.selectedTitleFlowLayout.addUserTitle(userTitle2);
                            EditUserTitleFragment.this.scrollToBottom();
                        }
                    });
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<UserTitle> list = this.list;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        private class CommunityTagViewHolder extends RecyclerView.ViewHolder {
            public CommunityTagViewHolder(View view) {
                super(view);
            }
        }
    }
}
