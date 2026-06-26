.class Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "MyUploadsBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/MyUploadsBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MyUploadsBaseFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/sharedfolder/MyUploadsBaseFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;->this$0:Lcom/narvii/sharedfolder/MyUploadsBaseFragment;

    .line 110
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0465

    .line 115
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090c0b

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 122
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c0b

    if-ne v0, v1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;->this$0:Lcom/narvii/sharedfolder/MyUploadsBaseFragment;

    const-string p2, "My Uploads"

    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedBaseFragment;->addPhotos(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 126
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
