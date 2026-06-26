.class Lcom/narvii/post/LocationPickerFragment$2;
.super Ljava/lang/Object;
.source "LocationPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$preferMyLocation:Z


# direct methods
.method constructor <init>(Lcom/narvii/post/LocationPickerFragment;Z)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/narvii/post/LocationPickerFragment$2;->this$0:Lcom/narvii/post/LocationPickerFragment;

    iput-boolean p2, p0, Lcom/narvii/post/LocationPickerFragment$2;->val$preferMyLocation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment$2;->this$0:Lcom/narvii/post/LocationPickerFragment;

    iget-object v1, v0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    iget-boolean v2, p0, Lcom/narvii/post/LocationPickerFragment$2;->val$preferMyLocation:Z

    invoke-virtual {v1, v2}, Lcom/narvii/location/LocationService;->getNearbyLocation(Z)Lcom/narvii/location/GPSCoordinate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/post/LocationPickerFragment;->access$000(Lcom/narvii/post/LocationPickerFragment;Lcom/narvii/location/GPSCoordinate;)V

    return-void
.end method
