.class Lcom/narvii/media/MediaOrganizeFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "MediaOrganizeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaOrganizeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field final synthetic this$0:Lcom/narvii/media/MediaOrganizeFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/MediaOrganizeFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 218
    const-class v0, Lcom/narvii/model/Media;

    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ILcom/narvii/model/Media;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->removeItem(ILcom/narvii/model/Media;)V

    return-void
.end method

.method private removeItem(ILcom/narvii/model/Media;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {v0, p2}, Lcom/narvii/media/MediaOrganizeFragment;->access$100(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 355
    iget-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    .line 357
    :cond_0
    iget-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/list/DragSortListFragment;->removeItemAtPosition(I)V

    return-void
.end method


# virtual methods
.method exists(Lcom/narvii/model/Media;)Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaOrganizeFragment;->existsRefIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 248
    sget v0, Lcom/narvii/lib/R$layout;->media_organize_list_item:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 250
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    .line 251
    sget p3, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 252
    invoke-virtual {p3, p1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 253
    sget v0, Lcom/narvii/lib/R$id;->edit:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    sget p3, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-virtual {v0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/narvii/lib/R$string;->media_no_desc:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/narvii/lib/R$string;->media_add_desc:I

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 257
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->exists(Lcom/narvii/model/Media;)Z

    move-result p3

    .line 259
    sget v0, Lcom/narvii/lib/R$id;->edit:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-virtual {v1}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    sget v0, Lcom/narvii/lib/R$id;->drag_handle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-virtual {v1}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    sget v0, Lcom/narvii/lib/R$id;->mask:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    const/16 p3, 0x8

    :goto_3
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    sget p3, Lcom/narvii/lib/R$id;->cover_mark:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {v0, p1}, Lcom/narvii/media/MediaOrganizeFragment;->access$100(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 269
    instance-of v0, p3, Lcom/narvii/model/Media;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    .line 270
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/narvii/lib/R$id;->image:I

    if-ne v1, v2, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object p1

    .line 272
    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 273
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class p5, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {p3, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "list"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "hideShareBar"

    .line 275
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-ltz p2, :cond_0

    const-string p1, "position"

    .line 277
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    :cond_0
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_1
    const/4 v1, 0x0

    if-eqz p5, :cond_4

    .line 281
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/narvii/lib/R$id;->edit:I

    if-ne v2, v3, :cond_4

    .line 282
    move-object v2, p3

    check-cast v2, Lcom/narvii/model/Media;

    .line 283
    new-instance v3, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 284
    iget-object v4, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    const-string v5, "allowSetCover"

    invoke-virtual {v4, v5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    iget-object v5, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {v5, v2}, Lcom/narvii/media/MediaOrganizeFragment;->access$100(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 287
    sget v5, Lcom/narvii/lib/R$string;->remove_as_cover_image:I

    invoke-virtual {v3, v5, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    goto :goto_0

    .line 289
    :cond_2
    sget v5, Lcom/narvii/lib/R$string;->set_as_cover_image:I

    invoke-virtual {v3, v5, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 292
    :cond_3
    :goto_0
    sget v1, Lcom/narvii/lib/R$string;->delete:I

    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 293
    new-instance v0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;

    invoke-direct {v0, p0, v4, v2, p2}, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;-><init>(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ZLcom/narvii/model/Media;I)V

    invoke-virtual {v3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 320
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_2

    .line 321
    :cond_4
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-virtual {p1}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 322
    check-cast p3, Lcom/narvii/model/Media;

    .line 323
    invoke-virtual {p0, p3}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->exists(Lcom/narvii/model/Media;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 324
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-virtual {p1, p3}, Lcom/narvii/media/MediaOrganizeFragment;->pickAndReturn(Lcom/narvii/model/Media;)V

    :cond_5
    return v0

    .line 328
    :cond_6
    check-cast p3, Lcom/narvii/model/Media;

    .line 329
    iget-object p1, p3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 330
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    sget p2, Lcom/narvii/lib/R$string;->media_caption:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 332
    new-instance p2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 333
    iget-object p4, p3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object p4, p3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    if-nez p4, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 335
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p4, 0x104000a

    .line 336
    new-instance p5, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;

    invoke-direct {p5, p0, p3, p2}, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;-><init>(Lcom/narvii/media/MediaOrganizeFragment$Adapter;Lcom/narvii/model/Media;Landroid/widget/EditText;)V

    invoke-virtual {p1, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    .line 343
    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 346
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v0

    .line 350
    :cond_8
    :goto_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 229
    invoke-super {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "coverMediaIndex"

    const/4 v1, -0x1

    .line 230
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 231
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iput-object p1, v1, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 239
    invoke-super {p0}, Lcom/narvii/list/NVArrayAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-static {v1}, Lcom/narvii/media/MediaOrganizeFragment;->access$000(Lcom/narvii/media/MediaOrganizeFragment;)I

    move-result v1

    const-string v2, "coverMediaIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method
