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
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.widget.DragSortLinearLayout;

/* JADX INFO: loaded from: classes8.dex */
public class ItemPropertyEditList extends DragSortLinearLayout implements View.OnLongClickListener {
    public void set(JsonNode jsonNode) {
        int i10;
        ItemPropertyEditor itemPropertyEditor;
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
            objectNodeCreateObjectNode2.put("type", "text");
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode2);
            ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode3.put("title", StringUtils.getStringForCommunityLocal(nVContext, R.string.compose_property_dislike, new String[0]));
            objectNodeCreateObjectNode3.put("value", "");
            objectNodeCreateObjectNode3.put("type", "text");
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode3);
            jsonNode = arrayNodeCreateArrayNode;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int childCount = getChildCount();
        int size = jsonNode.size();
        int i11 = 0;
        int i12 = 0;
        while (i11 < size) {
            JsonNode jsonNode2 = jsonNode.get(i11);
            while (true) {
                if (i12 >= childCount) {
                    i10 = i12;
                    itemPropertyEditor = null;
                    break;
                }
                i10 = i12 + 1;
                View childAt = getChildAt(i12);
                if (childAt instanceof ItemPropertyEditor) {
                    itemPropertyEditor = (ItemPropertyEditor) childAt;
                    break;
                }
                i12 = i10;
            }
            if (itemPropertyEditor == null) {
                itemPropertyEditor = (ItemPropertyEditor) layoutInflaterFrom.inflate(R.layout.item_property_editor, (ViewGroup) this, false);
                itemPropertyEditor.setOnLongClickListener(this);
                addView(itemPropertyEditor);
            }
            itemPropertyEditor.setItemProperty(jsonNode2);
            i11++;
            i12 = i10;
        }
        while (i12 < childCount) {
            removeViewAt(i12);
            childCount--;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(final View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setItems(new CharSequence[]{getContext().getString(R.string.remove)}, new DialogInterface.OnClickListener() { // from class: com.narvii.item.property.ItemPropertyEditList.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                ItemPropertyEditList.this.removeView(view);
            }
        });
        builder.show();
        return true;
    }

    public ItemPropertyEditList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void addNewProperty() {
        int childCount = getChildCount();
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            if (getChildAt(i11) instanceof ItemPropertyEditor) {
                i10++;
            }
        }
        if (i10 >= 20) {
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

    public JsonNode get() {
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof ItemPropertyEditor) {
                arrayNodeCreateArrayNode.add(((ItemPropertyEditor) childAt).getItemProperty());
            }
        }
        if (arrayNodeCreateArrayNode.size() == 0) {
            return null;
        }
        return arrayNodeCreateArrayNode;
    }

    public boolean validate() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((childAt instanceof ItemPropertyEditor) && !((ItemPropertyEditor) childAt).validate()) {
                return false;
            }
        }
        return true;
    }
}
