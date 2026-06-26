.class Lcom/narvii/post/LocationPickerFragment$1;
.super Ljava/lang/Object;
.source "LocationPickerFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/LocationPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/location/GPSCoordinate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/LocationPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/post/LocationPickerFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/post/LocationPickerFragment$1;->this$0:Lcom/narvii/post/LocationPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/location/GPSCoordinate;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment$1;->this$0:Lcom/narvii/post/LocationPickerFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/post/LocationPickerFragment;->setLocating(Z)V

    .line 79
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment$1;->this$0:Lcom/narvii/post/LocationPickerFragment;

    iget-object v1, p1, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    iget-boolean p1, p1, Lcom/narvii/post/LocationPickerFragment;->preferMyLocation:Z

    invoke-virtual {v1, p1}, Lcom/narvii/location/LocationService;->getNearbyLocation(Z)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/narvii/post/LocationPickerFragment$1;->this$0:Lcom/narvii/post/LocationPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f0dc3

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment$1;->this$0:Lcom/narvii/post/LocationPickerFragment;

    invoke-static {v0, p1}, Lcom/narvii/post/LocationPickerFragment;->access$000(Lcom/narvii/post/LocationPickerFragment;Lcom/narvii/location/GPSCoordinate;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/narvii/location/GPSCoordinate;

    invoke-virtual {p0, p1}, Lcom/narvii/post/LocationPickerFragment$1;->call(Lcom/narvii/location/GPSCoordinate;)V

    return-void
.end method
