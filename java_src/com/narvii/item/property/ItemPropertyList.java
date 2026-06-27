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
import com.narvii.amino.mastes.R;
import com.narvii.util.JacksonUtils;

/* loaded from: classes.dex */
public class ItemPropertyList extends LinearLayout {
    boolean isWhiteTextColor;
    JsonNode props;

    public ItemPropertyList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isWhiteTextColor = false;
    }

    public void setItemProperties(JsonNode jsonNode) {
        this.props = jsonNode;
        updateView();
    }

    public void setItemProperties(JsonNode jsonNode, boolean z) {
        this.isWhiteTextColor = z;
        setItemProperties(jsonNode);
    }

    private void updateView() {
        JsonNode jsonNode = this.props;
        if (jsonNode != null && jsonNode.isArray() && jsonNode.size() > 0) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
            int childCount = getChildCount();
            int size = jsonNode.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                JsonNode jsonNode2 = jsonNode.get(i2);
                ItemPropertyView itemPropertyView = null;
                if (!TextUtils.isEmpty(JacksonUtils.nodeString(jsonNode2, "value"))) {
                    while (true) {
                        if (i >= childCount) {
                            break;
                        }
                        int i3 = i + 1;
                        View childAt = getChildAt(i);
                        if (childAt instanceof ItemPropertyView) {
                            itemPropertyView = (ItemPropertyView) childAt;
                            i = i3;
                            break;
                        }
                        i = i3;
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
                }
            }
            while (i < childCount) {
                removeViewAt(i);
                childCount--;
            }
            return;
        }
        removeAllViews();
    }
}
