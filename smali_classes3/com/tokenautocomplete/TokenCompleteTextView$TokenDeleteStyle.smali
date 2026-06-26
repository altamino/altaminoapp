.class public final enum Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;
.super Ljava/lang/Enum;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenDeleteStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field public static final enum Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field public static final enum PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field public static final enum ToString:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field public static final enum _Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 58
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    const/4 v1, 0x0

    const-string v2, "_Parent"

    invoke-direct {v0, v2, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 59
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    const/4 v2, 0x1

    const-string v3, "Clear"

    invoke-direct {v0, v3, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 60
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    const/4 v3, 0x2

    const-string v4, "PartialCompletion"

    invoke-direct {v0, v4, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 61
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    const/4 v4, 0x3

    const-string v5, "ToString"

    invoke-direct {v0, v5, v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ToString:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 57
    sget-object v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    aput-object v5, v0, v1

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ToString:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;
    .locals 1

    .line 57
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    return-object p0
.end method

.method public static values()[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;
    .locals 1

    .line 57
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-virtual {v0}, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    return-object v0
.end method
