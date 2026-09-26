.class Lcom/narvii/post/LocationPickerFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/LocationPickerFragment$3;->this$0:Lcom/narvii/post/LocationPickerFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$opts:[I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$lat:I

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$lng:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$opts:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const-class p1, Lcom/narvii/location/picker/GoogleMapPickerFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "lat"

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$lat:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    const-string v0, "lng"

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$lng:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment$3;->this$0:Lcom/narvii/post/LocationPickerFragment;

    .line 30
    const/4 v1, 0x7

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1, v1}, Lcom/narvii/post/LocationPickerFragment$3;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment$3;->val$opts:[I

    .line 36
    .line 37
    aget p1, p1, p2

    .line 38
    const/4 p2, 0x2

    .line 39
    .line 40
    if-ne p1, p2, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment$3;->this$0:Lcom/narvii/post/LocationPickerFragment;

    .line 43
    const/4 p2, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/narvii/post/LocationPickerFragment;->n(Lcom/narvii/post/LocationPickerFragment;Lcom/narvii/location/GPSCoordinate;)V

    .line 47
    :cond_1
    return-void
.end method
