.class public final Lu0/e$b;
.super Lu0/e$a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu0/e$a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroid/os/ParcelFileDescriptor;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lu0/e$a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    return-void
.end method
