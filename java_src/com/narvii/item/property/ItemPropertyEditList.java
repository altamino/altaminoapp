package com.narvii.item.property;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.widget.DragSortLinearLayout;

/* loaded from: classes.dex */
public class ItemPropertyEditList extends DragSortLinearLayout implements View.OnLongClickListener {
    public ItemPropertyEditList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void set(JsonNode jsonNode) {
        if (jsonNode == null || jsonNode.size() == 0) {
            NVContext nVContext = Utils.getNVContext(getContext());
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("title", StringUtils.getStringForCommunityLocal(nVContext, R.string.compose_property_my_rating, new String[0]));
            objectNodeCreateObjectNode.put("value", "");
            objectNodeCreateObjectNode.put("type", "levelStar");
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode);
            ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode2.put("title", StringUtils.getStringForCommunityLocal(nVContext, R.string.compose_property_what_i_like, new String[0]));
            objectNodeCreateObjectNode2.put("value", "");
            objectNodeCreateObjectNode2.put("type", MimeTypes.BASE_TYPE_TEXT);
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode2);
            ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode3.put("title", StringUtils.getStringForCommunityLocal(nVContext, R.string.compose_property_dislike, new String[0]));
            objectNodeCreateObjectNode3.put("value", "");
            objectNodeCreateObjectNode3.put("type", MimeTypes.BASE_TYPE_TEXT);
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode3);
            jsonNode = arrayNodeCreateArrayNode;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int childCount = getChildCount();
        int size = jsonNode.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            JsonNode jsonNode2 = jsonNode.get(i2);
            ItemPropertyEditor itemPropertyEditor = null;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                int i3 = i + 1;
                View childAt = getChildAt(i);
                if (childAt instanceof ItemPropertyEditor) {
                    itemPropertyEditor = (ItemPropertyEditor) childAt;
                    i = i3;
                    break;
                }
                i = i3;
            }
            if (itemPropertyEditor == null) {
                itemPropertyEditor = (ItemPropertyEditor) layoutInflaterFrom.inflate(R.layout.item_property_editor, (ViewGroup) this, false);
                itemPropertyEditor.setOnLongClickListener(this);
                addView(itemPropertyEditor);
            }
            itemPropertyEditor.setItemProperty(jsonNode2);
        }
        while (i < childCount) {
            removeViewAt(i);
            childCount--;
        }
    }

    public JsonNode get() {
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ItemPropertyEditor) {
                arrayNodeCreateArrayNode.add(((ItemPropertyEditor) childAt).getItemProperty());
            }
        }
        if (arrayNodeCreateArrayNode.size() == 0) {
            return null;
        }
        return arrayNodeCreateArrayNode;
    }

    public void addNewProperty() {
        int childCount = getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            if (getChildAt(i2) instanceof ItemPropertyEditor) {
                i++;
            }
        }
        if (i >= 20) {
            NVToast.makeText(getContext(), getContext().getString(R.string.post_item_property_hit_limit), 0).show();
            return;
        }
        final ItemPropertyEditor itemPropertyEditor = (ItemPropertyEditor) LayoutInflater.from(getContext()).inflate(R.layout.item_property_editor, (ViewGroup) this, false);
        itemPropertyEditor.setOnLongClickListener(this);
        addView(itemPropertyEditor);
        Utils.post(new Runnable() { // from class: com.narvii.item.property.ItemPropertyEditList.1
            @Override // java.lang.Runnable
            public void run() {
                itemPropertyEditor.title.requestFocus();
                SoftKeyboard.showSoftKeyboard(itemPropertyEditor.title);
            }
        });
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(final View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setItems(new CharSequence[]{getContext().getString(R.string.remove)}, new DialogInterface.OnClickListener() { // from class: com.narvii.item.property.ItemPropertyEditList.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ItemPropertyEditList.this.removeView(view);
            }
        });
        builder.show();
        return true;
    }

    public boolean validate() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof ItemPropertyEditor) && !((ItemPropertyEditor) childAt).validate()) {
                return false;
            }
        }
        return true;
    }
}
