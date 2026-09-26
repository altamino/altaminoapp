.class Lcom/narvii/post/LocationPickerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/LocationPickerFragment$2;->this$0:Lcom/narvii/post/LocationPickerFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/post/LocationPickerFragment$2;->val$preferMyLocation:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/LocationPickerFragment$2;->this$0:Lcom/narvii/post/LocationPickerFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/post/LocationPickerFragment;->locationService:Lcom/narvii/location/LocationService;

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/narvii/post/LocationPickerFragment$2;->val$preferMyLocation:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/narvii/location/LocationService;->getNearbyLocation(Z)Lcom/narvii/location/GPSCoordinate;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/post/LocationPickerFragment;->n(Lcom/narvii/post/LocationPickerFragment;Lcom/narvii/location/GPSCoordinate;)V

    .line 14
    return-void
.end method
