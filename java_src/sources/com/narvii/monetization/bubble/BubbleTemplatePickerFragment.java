package com.narvii.monetization.bubble;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.ChatBubble;
import com.narvii.monetization.bubble.model.BubbleTemplate;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleTemplatePickerFragment extends NVListFragment {
    private ChatBubble chatBubble;
    private String curCheckedTempId;
    TemplatePickedListener listener;
    private boolean templateRequestSent;

    class BubbleTemplateListAdapter extends NVPagedAdapter<BubbleTemplate, BubbleTemplateListResponse> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BubbleTemplate> dataType() {
            return BubbleTemplate.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 20;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends BubbleTemplateListResponse> responseType() {
            return BubbleTemplateListResponse.class;
        }

        public BubbleTemplateListAdapter(NVContext nVContext, int i10) {
            super(nVContext, i10);
        }

        private void selectTemplate(BubbleTemplate bubbleTemplate) {
            if (bubbleTemplate == null) {
                return;
            }
            BubbleTemplatePickerFragment.this.curCheckedTempId = bubbleTemplate.id();
            notifyDataSetChanged();
            TemplatePickedListener templatePickedListener = BubbleTemplatePickerFragment.this.listener;
            if (templatePickedListener != null) {
                templatePickedListener.onTemplatePicked(bubbleTemplate);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return new ApiRequest.Builder().path("chat/chat-bubble/templates").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof BubbleTemplate)) {
                return null;
            }
            BubbleTemplate bubbleTemplate = (BubbleTemplate) obj;
            View viewCreateView = createView(R.layout.item_bubble_template, viewGroup, view);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.temp_preview);
            nVImageView.setShowPressedMask(false);
            nVImageView.setImageMedia(bubbleTemplate.getBackgroundMedia());
            viewCreateView.findViewById(R.id.checked_indicator).setVisibility(Utils.isEqualsNotNull(BubbleTemplatePickerFragment.this.curCheckedTempId, bubbleTemplate.id()) ? 0 : 4);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof BubbleTemplate) {
                selectTemplate((BubbleTemplate) obj);
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, BubbleTemplateListResponse bubbleTemplateListResponse, int i10) {
            super.onPageResponse(apiRequest, bubbleTemplateListResponse, i10);
            if (BubbleTemplatePickerFragment.this.templateRequestSent) {
                return;
            }
            List<BubbleTemplate> list = bubbleTemplateListResponse.templateList;
            if (list != null && list.size() > 0 && BubbleTemplatePickerFragment.this.getBooleanParam("autoChoose")) {
                selectTemplate(bubbleTemplateListResponse.templateList.get(0));
            }
            BubbleTemplatePickerFragment.this.templateRequestSent = true;
        }
    }

    interface TemplatePickedListener {
        void onTemplatePicked(BubbleTemplate bubbleTemplate);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    public void setListener(TemplatePickedListener templatePickedListener) {
        this.listener = templatePickedListener;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_template_column_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setAdapter(new BubbleTemplateListAdapter(this, 0), 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        if (bundle == null) {
            String stringParam = getStringParam(BubbleEditFragment.KEY_CHAT_BUBBLE);
            if (!TextUtils.isEmpty(stringParam)) {
                this.chatBubble = (ChatBubble) JacksonUtils.readAs(stringParam, ChatBubble.class);
            }
            ChatBubble chatBubble = this.chatBubble;
            if (chatBubble == null) {
                str = null;
            } else {
                str = chatBubble.templateId;
            }
            this.curCheckedTempId = str;
            return;
        }
        String string = bundle.getString("bubble");
        if (!TextUtils.isEmpty(string)) {
            this.chatBubble = (ChatBubble) JacksonUtils.readAs(string, ChatBubble.class);
        }
        this.curCheckedTempId = bundle.getString("curCheckedTempId");
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bubble_template_picker_list, viewGroup, false);
    }
}
