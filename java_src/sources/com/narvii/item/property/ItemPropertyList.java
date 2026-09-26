package com.narvii.item.property;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.amino.master.R;
import com.narvii.util.JacksonUtils;

/* JADX INFO: loaded from: classes11.dex */
public class ItemPropertyList extends LinearLayout {
    boolean isWhiteTextColor;
    JsonNode props;

    public void setItemProperties(JsonNode jsonNode) {
        this.props = jsonNode;
        updateView();
    }

    private void updateView() {
        int i10;
        ItemPropertyView itemPropertyView;
        JsonNode jsonNode = this.props;
        if (jsonNode == null || !jsonNode.isArray() || jsonNode.size() <= 0) {
            removeAllViews();
            return;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int childCount = getChildCount();
        int size = jsonNode.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            JsonNode jsonNode2 = jsonNode.get(i12);
            if (!TextUtils.isEmpty(JacksonUtils.nodeString(jsonNode2, "value"))) {
                while (true) {
                    if (i11 >= childCount) {
                        i10 = i11;
                        itemPropertyView = null;
                        break;
                    }
                    i10 = i11 + 1;
                    View childAt = getChildAt(i11);
                    if (childAt instanceof ItemPropertyView) {
                        itemPropertyView = (ItemPropertyView) childAt;
                        break;
                    }
                    i11 = i10;
                }
                if (itemPropertyView == null) {
                    itemPropertyView = (ItemPropertyView) layoutInflaterFrom.inflate(R.layout.item_property_view, (ViewGroup) this, false);
                    addView(itemPropertyView);
                }
                itemPropertyView.set(jsonNode2);
                if (itemPropertyView.findViewById(R.id.item_property_title) instanceof TextView) {
                    ((TextView) itemPropertyView.findViewById(R.id.item_property_title)).setTextColor(this.isWhiteTextColor ? -1 : -10066330);
                }
                if (itemPropertyView.findViewById(R.id.item_property_value) instanceof TextView) {
                    ((TextView) itemPropertyView.findViewById(R.id.item_property_value)).setTextColor(this.isWhiteTextColor ? -1 : -10066330);
                }
                i11 = i10;
            }
        }
        while (i11 < childCount) {
            removeViewAt(i11);
            childCount--;
        }
    }

    public void setItemProperties(JsonNode jsonNode, boolean z6) {
        this.isWhiteTextColor = z6;
        setItemProperties(jsonNode);
    }

    public ItemPropertyList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isWhiteTextColor = false;
    }
}
