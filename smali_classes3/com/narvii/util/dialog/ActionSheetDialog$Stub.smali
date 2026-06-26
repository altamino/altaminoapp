.class Lcom/narvii/util/dialog/ActionSheetDialog$Stub;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/dialog/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stub"
.end annotation


# instance fields
.field flags:I

.field layoutId:I

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->title:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->flags:I

    .line 46
    iput p3, p0, Lcom/narvii/util/dialog/ActionSheetDialog$Stub;->layoutId:I

    return-void
.end method
