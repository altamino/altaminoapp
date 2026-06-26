.class Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;
.super Ljava/lang/Object;
.source "PhoneImagePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

.field final synthetic val$cell:Landroid/view/View;

.field final synthetic val$e:Lcom/narvii/media/PhoneImagePickerFragment$Entry;

.field final synthetic val$position:I

.field final synthetic val$select:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/narvii/media/PhoneImagePickerFragment$Adapter;ILcom/narvii/media/PhoneImagePickerFragment$Entry;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->this$1:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    iput p2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->val$position:I

    iput-object p3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->val$e:Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    iput-object p4, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->val$cell:Landroid/view/View;

    iput-object p5, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->val$select:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 547
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->this$1:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    iget v2, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->val$position:I

    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->val$e:Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    iget-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->val$cell:Landroid/view/View;

    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment$Adapter$1;->val$select:Landroid/widget/ImageView;

    move-object v0, v1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    return-void
.end method
