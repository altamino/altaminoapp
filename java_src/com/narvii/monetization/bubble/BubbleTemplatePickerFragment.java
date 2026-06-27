package com.narvii.monetization.bubble;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes3.dex */
public class BubbleTemplatePickerFragment extends NVListFragment {
    private ChatBubble chatBubble;
    private String curCheckedTempId;
    TemplatePickedListener listener;
    private boolean templateRequestSent;

    interface TemplatePickedListener {
        void onTemplatePicked(BubbleTemplate bubbleTemplate);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            String stringParam = getStringParam(BubbleEditFragment.KEY_CHAT_BUBBLE);
            if (!TextUtils.isEmpty(stringParam)) {
                this.chatBubble = (ChatBubble) JacksonUtils.readAs(stringParam, ChatBubble.class);
            }
            ChatBubble chatBubble = this.chatBubble;
            this.curCheckedTempId = chatBubble == null ? null : chatBubble.templateId;
            return;
        }
        String string = bundle.getString("bubble");
        if (!TextUtils.isEmpty(string)) {
            this.chatBubble = (ChatBubble) JacksonUtils.readAs(string, ChatBubble.class);
        }
        this.curCheckedTempId = bundle.getString("curCheckedTempId");
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_bubble_template_picker_list, viewGroup, false);
    }

    public void setListener(TemplatePickedListener templatePickedListener) {
        this.listener = templatePickedListener;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) throws Resources.NotFoundException {
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_template_column_padding);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        divideColumnAdapter.setAdapter(new BubbleTemplateListAdapter(this, 0), 3);
        return divideColumnAdapter;
    }

    class BubbleTemplateListAdapter extends NVPagedAdapter<BubbleTemplate, BubbleTemplateListResponse> {
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

        public BubbleTemplateListAdapter(NVContext nVContext, int i) {
            super(nVContext, i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BubbleTemplate> dataType() {
            return BubbleTemplate.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends BubbleTemplateListResponse> responseType() {
            return BubbleTemplateListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
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
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof BubbleTemplate) {
                selectTemplate((BubbleTemplate) obj);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, BubbleTemplateListResponse bubbleTemplateListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) bubbleTemplateListResponse, i);
            if (BubbleTemplatePickerFragment.this.templateRequestSent) {
                return;
            }
            List<BubbleTemplate> list = bubbleTemplateListResponse.templateList;
            if (list != null && list.size() > 0 && BubbleTemplatePickerFragment.this.getBooleanParam("autoChoose")) {
                selectTemplate(bubbleTemplateListResponse.templateList.get(0));
            }
            BubbleTemplatePickerFragment.this.templateRequestSent = true;
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
    }
}
