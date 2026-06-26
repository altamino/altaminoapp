.class Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "PhoneAudioPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneAudioPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumAdapter"
.end annotation


# instance fields
.field folders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/media/PhoneAudioPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;)V"
        }
    .end annotation

    .line 578
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 579
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 581
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    .line 582
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 583
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 584
    iget v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    iget v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 587
    iget-object v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderName:Ljava/lang/String;

    const-string v2, "Camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 612
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 613
    sget v0, Lcom/narvii/lib/R$layout;->media_image_picker_album:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 614
    sget p3, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 615
    sget v0, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 616
    instance-of v1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_2

    .line 617
    check-cast p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 618
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    .line 620
    iget-object v5, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iget-object v5, v5, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 621
    iget v7, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    iget v8, v6, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-nez v1, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 630
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 633
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v4, v1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 634
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_4
    if-nez v4, :cond_5

    .line 641
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 643
    :cond_5
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 646
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_audios:I

    invoke-virtual {p3, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iget-object p3, p3, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-nez p3, :cond_0

    .line 654
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$700(Lcom/narvii/media/PhoneAudioPickerFragment;Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    .line 655
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$000(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 656
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_all_media:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 657
    :cond_0
    instance-of p1, p3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    if-eqz p1, :cond_1

    .line 658
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    check-cast p3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    invoke-static {p1, p3}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$700(Lcom/narvii/media/PhoneAudioPickerFragment;Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    .line 659
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$000(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 660
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->adapter:Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method
