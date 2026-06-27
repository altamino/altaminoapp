package com.narvii.adapter;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.FixedFragmentStatePagerAdapter;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class FragmentGalleryAdapter<T extends NVObject, E extends ListResponse<? extends T>> extends FixedFragmentStatePagerAdapter {
    public static final int PRE_LOAD_NUMBER = 5;
    protected String _errorMsg;
    protected boolean _isEnd;
    protected List<T> _list;
    protected int _start;
    protected String _stopTime;
    Runnable loadNextPageRunnable;
    NVContext nvContext;
    private ApiRequest request;
    protected final ApiResponseListener<E> requestListener;
    public Runnable runnable;
    public boolean viewpagerIdle;

    protected abstract Fragment createFragment(T t);

    protected abstract ApiRequest createRequest(int i, int i2, String str);

    protected abstract Class<T> dataType();

    @Override // android.support.v4.view.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    protected void onNotificationDeleteSuccess() {
    }

    protected abstract Class<? extends E> responseType();

    public FragmentGalleryAdapter(FragmentManager fragmentManager, NVContext nVContext, List<T> list, String str, int i, boolean z) {
        super(fragmentManager);
        this.viewpagerIdle = true;
        this.loadNextPageRunnable = new Runnable() { // from class: com.narvii.adapter.FragmentGalleryAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                FragmentGalleryAdapter.this.loadNextPage();
            }
        };
        this.requestListener = (ApiResponseListener<E>) new ApiResponseListener<E>(responseType()) { // from class: com.narvii.adapter.FragmentGalleryAdapter.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(final ApiRequest apiRequest, final E e) throws Exception {
                FragmentGalleryAdapter fragmentGalleryAdapter = FragmentGalleryAdapter.this;
                if (fragmentGalleryAdapter.viewpagerIdle) {
                    fragmentGalleryAdapter.request = null;
                    FragmentGalleryAdapter.this.onPageResponse(apiRequest, e);
                } else {
                    fragmentGalleryAdapter.runnable = new Runnable() { // from class: com.narvii.adapter.FragmentGalleryAdapter.2.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() throws NumberFormatException {
                            FragmentGalleryAdapter.this.request = null;
                            FragmentGalleryAdapter.this.onPageResponse(apiRequest, e);
                        }
                    };
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(final ApiRequest apiRequest, int i2, List<NameValuePair> list2, final String str2, final ApiResponse apiResponse, Throwable th) {
                FragmentGalleryAdapter fragmentGalleryAdapter = FragmentGalleryAdapter.this;
                if (fragmentGalleryAdapter.viewpagerIdle) {
                    fragmentGalleryAdapter.request = null;
                    FragmentGalleryAdapter.this.onFailResponse(apiRequest, str2, apiResponse);
                } else {
                    fragmentGalleryAdapter.runnable = new Runnable() { // from class: com.narvii.adapter.FragmentGalleryAdapter.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            FragmentGalleryAdapter.this.request = null;
                            FragmentGalleryAdapter.this.onFailResponse(apiRequest, str2, apiResponse);
                        }
                    };
                }
            }
        };
        this.nvContext = nVContext;
        if (list != null) {
            this._list = list;
            this._stopTime = str;
            this._start = i;
            this._isEnd = z;
        }
    }

    public void setViewPagerIdle(boolean z) {
        Runnable runnable;
        this.viewpagerIdle = z;
        if (!z || (runnable = this.runnable) == null) {
            return;
        }
        runnable.run();
        this.runnable = null;
    }

    @Override // com.narvii.util.FixedFragmentStatePagerAdapter
    public Fragment getItem(int i) {
        if (i > getCount() - 5 && !this._isEnd && !isError() && this.request == null) {
            Utils.handler.removeCallbacks(this.loadNextPageRunnable);
            Utils.post(this.loadNextPageRunnable);
        }
        if (i < this._list.size()) {
            return createFragment(this._list.get(i));
        }
        if (isError()) {
            return createErrorFragment();
        }
        return createLoadingFragment();
    }

    public T getObject(int i) {
        return this._list.get(i);
    }

    @Override // com.narvii.util.FixedFragmentStatePagerAdapter
    public String getTag(int i) {
        if (i < this._list.size()) {
            return this._list.get(i).id();
        }
        return super.getTag(i);
    }

    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse) {
        this._errorMsg = str;
        notifyDataSetChanged();
    }

    protected void onPageResponse(ApiRequest apiRequest, E e) throws NumberFormatException {
        int i = this._start;
        int size = e.list() == null ? 0 : e.list().size();
        try {
            Uri uri = Uri.parse(apiRequest.url());
            String queryParameter = uri.getQueryParameter(TtmlNode.START);
            String queryParameter2 = uri.getQueryParameter("size");
            if (!TextUtils.isEmpty(queryParameter) && !TextUtils.isEmpty(queryParameter2)) {
                i = Integer.parseInt(queryParameter);
                size = Integer.parseInt(queryParameter2);
            }
        } catch (Exception unused) {
        }
        this._errorMsg = null;
        if (this._list == null) {
            this._list = new ArrayList();
        }
        if (e.list() == null || e.list().size() == 0) {
            this._isEnd = true;
        } else {
            this._list.addAll(filterResponseList(e.list()));
            this._start = i + size;
        }
        if (this._stopTime == null) {
            this._stopTime = e.timestamp;
        }
        notifyDataSetChanged();
    }

    protected List<T> filterResponseList(List<T> list) {
        return new FilterHelper(this.nvContext).filter(list);
    }

    private Fragment createErrorFragment() {
        ErrorFragment errorFragment = new ErrorFragment();
        Bundle bundle = new Bundle();
        bundle.putString("_errorMsg", this._errorMsg);
        errorFragment.setArguments(bundle);
        errorFragment.errorRetryCallback = new Callback() { // from class: com.narvii.adapter.FragmentGalleryAdapter.3
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                FragmentGalleryAdapter fragmentGalleryAdapter = FragmentGalleryAdapter.this;
                fragmentGalleryAdapter._errorMsg = null;
                fragmentGalleryAdapter.loadNextPage();
            }
        };
        return errorFragment;
    }

    private Fragment createLoadingFragment() {
        return new LoadingFragment();
    }

    private boolean isError() {
        return this._errorMsg != null;
    }

    public void loadNextPage() {
        if (this._list == null || this._isEnd || this.request != null) {
            return;
        }
        this.runnable = null;
        this._errorMsg = null;
        ApiService apiService = (ApiService) this.nvContext.getService("api");
        this.request = createRequest(this._start, pageSize(), this._stopTime);
        ApiRequest apiRequest = this.request;
        if (apiRequest == null) {
            Log.d("loadNextPage pending...");
        } else {
            apiService.exec(apiRequest, this.requestListener);
        }
        notifyDataSetChanged();
    }

    protected int pageSize() {
        return ((ConfigService) this.nvContext.getService("config")).getPageSize();
    }

    public void editList(Notification notification, boolean z) {
        if (this._list != null && dataType().isInstance(notification.obj)) {
            NVObject nVObject = (NVObject) notification.obj;
            String str = notification.action;
            if (str == "new") {
                this._list.add(0, nVObject);
                notifyDataSetChanged();
                return;
            }
            if (str == "edit") {
                int iIndexOfId = Utils.indexOfId(this._list, nVObject.id());
                if (iIndexOfId < 0) {
                    if (z) {
                        this._list.add(0, nVObject);
                        notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                if (z) {
                    this._list.remove(iIndexOfId);
                    this._list.add(0, nVObject);
                    this._start--;
                } else {
                    this._list.set(iIndexOfId, nVObject);
                }
                notifyDataSetChanged();
                return;
            }
            if (str == "update") {
                int iIndexOfId2 = Utils.indexOfId(this._list, nVObject.id());
                if (iIndexOfId2 >= 0) {
                    this._list.set(iIndexOfId2, nVObject);
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            if (str == "delete") {
                int iRemoveId = Utils.removeId(this._list, nVObject.id());
                this._start -= iRemoveId;
                if (iRemoveId != 0) {
                    onNotificationDeleteSuccess();
                    notifyDataSetChanged();
                }
            }
        }
    }

    public Fragment getFragmentAt(int i) {
        String tag;
        if (getFragmentManager() == null || (tag = getTag(i)) == null) {
            return null;
        }
        return getFragmentManager().findFragmentByTag(tag);
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        List<T> list = this._list;
        int size = list == null ? 0 : list.size();
        return !this._isEnd ? size + 1 : size;
    }

    public static class LoadingFragment extends NVFragment {
        @Override // android.support.v4.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            return layoutInflater.inflate(R.layout.fragment_gallery_loading, viewGroup, false);
        }
    }

    public static class ErrorFragment extends NVFragment {
        Callback errorRetryCallback;

        @Override // android.support.v4.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            return layoutInflater.inflate(R.layout.fragment_gallery_error, viewGroup, false);
        }

        @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
        public void onViewCreated(View view, Bundle bundle) {
            super.onViewCreated(view, bundle);
            TextView textView = (TextView) view.findViewById(R.id.text);
            if (textView != null) {
                String stringParam = getString(R.string.normal_error_offline1) + "\n" + getString(R.string.normal_error_offline2);
                if (!Utils.isDeviceOffline(getContext())) {
                    stringParam = getStringParam("_errorMsg");
                }
                textView.setText(stringParam);
            }
            view.findViewById(R.id.retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.adapter.FragmentGalleryAdapter.ErrorFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Callback callback = ErrorFragment.this.errorRetryCallback;
                    if (callback != null) {
                        callback.call(null);
                    }
                }
            });
        }
    }
}
