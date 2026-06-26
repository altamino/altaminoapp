.class Lcom/narvii/post/LocationPickerFragment$3;
.super Ljava/lang/Object;
.source "LocationPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/LocationPickerFragment;

.field final synthetic val$lat:I

.field final synthetic val$lng:I

.field final synthetic val$opts:[I


# direct methods
.method constructor <init>(Lcom/narvii/post/LocationPickerFragment;[III)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/narvii/post/LocationPickerFragment$3;->this$0:Lcom/narvii/post/LocationPickerFragment;

    iput-object p2, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$opts:[I

    iput p3, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$lat:I

    iput p4, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$lng:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 121
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$opts:[I

    aget p1, p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 122
    const-class p1, Lcom/narvii/location/picker/GoogleMapPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 123
    iget v0, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$lat:I

    const-string v1, "lat"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget v0, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$lng:I

    const-string v1, "lng"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment$3;->this$0:Lcom/narvii/post/LocationPickerFragment;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$opts:[I

    aget p1, p1, p2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 128
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment$3;->this$0:Lcom/narvii/post/LocationPickerFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/post/LocationPickerFragment;->access$000(Lcom/narvii/post/LocationPickerFragment;Lcom/narvii/location/GPSCoordinate;)V

    :cond_1
    return-void
.end method
