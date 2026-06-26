.class final Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onCreate$1;
.super Ljava/lang/Object;
.source "DynamicCroppingActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onCreate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onCreate$1;

    invoke-direct {v0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onCreate$1;-><init>()V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onCreate$1;->INSTANCE:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onCreate$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 157
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->getStopRenderThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->setStopRenderThread(Z)V

    return-void
.end method
