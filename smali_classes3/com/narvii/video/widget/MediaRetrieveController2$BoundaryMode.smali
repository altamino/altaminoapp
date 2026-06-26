.class public final enum Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;
.super Ljava/lang/Enum;
.source "MediaRetrieveController2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaRetrieveController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BoundaryMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

.field public static final enum FIXED:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

.field public static final enum SHIFT:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    new-instance v1, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    const/4 v2, 0x0

    const-string v3, "FIXED"

    invoke-direct {v1, v3, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->FIXED:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    const/4 v2, 0x1

    const-string v3, "SHIFT"

    invoke-direct {v1, v3, v2}, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->SHIFT:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->$VALUES:[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;
    .locals 1

    const-class v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    return-object p0
.end method

.method public static values()[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;
    .locals 1

    sget-object v0, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->$VALUES:[Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    invoke-virtual {v0}, [Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    return-object v0
.end method
