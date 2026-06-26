.class Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "PhoneImagePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneImagePickerFragment;
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
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/media/PhoneImagePickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;)V"
        }
    .end annotation

    .line 815
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 816
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 818
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    .line 819
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 820
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 821
    iget v1, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 823
    :cond_0
    iget v1, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 824
    iget-object v1, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderName:Ljava/lang/String;

    const-string v2, "Camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

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

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

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
    .locals 7

    .line 849
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 850
    sget v0, Lcom/narvii/lib/R$layout;->media_image_picker_album:I

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 852
    sget p3, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 853
    sget v0, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 854
    instance-of v1, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    const-string v2, ")"

    const-string v3, " ("

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 855
    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 857
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object v1, v1, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 858
    iget v6, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    iget v5, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    if-ne v6, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v1, p3, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$800(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 862
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 864
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_4

    .line 867
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_2

    .line 869
    :cond_4
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {v1, p3, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$800(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 872
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p3}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1500(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_media:I

    goto :goto_3

    :cond_5
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_images:I

    :goto_3
    invoke-virtual {p3, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object p3, p3, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-nez p3, :cond_1

    .line 881
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1600(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 882
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$000(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 883
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p2}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1500(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_all_media:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_all_images:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 884
    :cond_1
    instance-of p1, p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    if-eqz p1, :cond_2

    .line 885
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    check-cast p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    invoke-static {p1, p3}, Lcom/narvii/media/PhoneImagePickerFragment;->access$1600(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 886
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->access$000(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 887
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method
