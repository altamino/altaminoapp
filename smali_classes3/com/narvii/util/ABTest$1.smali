.class synthetic Lcom/narvii/util/ABTest$1;
.super Ljava/lang/Object;
.source "ABTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ABTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$narvii$util$ABTest:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/narvii/util/ABTest;->values()[Lcom/narvii/util/ABTest;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/narvii/util/ABTest$1;->$SwitchMap$com$narvii$util$ABTest:[I

    return-void
.end method
