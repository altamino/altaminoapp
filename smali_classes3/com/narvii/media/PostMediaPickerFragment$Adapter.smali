.class Lcom/narvii/media/PostMediaPickerFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "PostMediaPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PostMediaPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PostMediaPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PostMediaPickerFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 145
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 184
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    .line 185
    sget v0, Lcom/narvii/lib/R$layout;->item_post_media:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 186
    sget p3, Lcom/narvii/lib/R$id;->photo:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 187
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 189
    sget p3, Lcom/narvii/lib/R$id;->select:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 190
    iget-object v0, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 150
    const-class v0, Lcom/narvii/model/Media;

    instance-of v1, p3, Lcom/narvii/model/Media;

    if-eqz v1, :cond_3

    .line 151
    check-cast p3, Lcom/narvii/model/Media;

    const/4 p1, 0x1

    const/16 p2, 0x19

    if-eqz p5, :cond_2

    .line 152
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p4

    sget p5, Lcom/narvii/lib/R$id;->select:I

    if-ne p4, p5, :cond_2

    .line 153
    iget-object p4, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    iget-object p4, p4, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 154
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    iget-object p2, p2, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p4, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    iget-object p4, p4, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lt p4, p2, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    sget p5, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p4, p5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    return p1

    .line 161
    :cond_1
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    iget-object p2, p2, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 164
    :goto_0
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    invoke-static {p2}, Lcom/narvii/media/PostMediaPickerFragment;->access$100(Lcom/narvii/media/PostMediaPickerFragment;)V

    goto :goto_1

    .line 166
    :cond_2
    new-instance p4, Landroid/content/Intent;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://fragment/"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p4, v1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    iget-object p5, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    iget-object p5, p5, Lcom/narvii/media/PostMediaPickerFragment;->allMediaList:Ljava/util/List;

    invoke-static {p5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v1, "list"

    invoke-virtual {p4, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object p5, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    iget-object p5, p5, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    invoke-static {p5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v1, "selected"

    invoke-virtual {p4, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "class"

    .line 170
    invoke-virtual {p4, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p5, "selectClass"

    .line 171
    invoke-virtual {p4, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p5, "maxCount"

    .line 172
    invoke-virtual {p4, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    iget-object p2, p2, Lcom/narvii/media/PostMediaPickerFragment;->allMediaList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const-string p3, "position"

    invoke-virtual {p4, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    const/16 p3, 0x58

    invoke-virtual {p2, p4, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return p1

    .line 179
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
