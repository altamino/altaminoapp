.class public final enum Lcom/tokenautocomplete/TokenCompleteTextView$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tokenautocomplete/TokenCompleteTextView$i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$i;

.field public static final enum Clear:Lcom/tokenautocomplete/TokenCompleteTextView$i;

.field public static final enum PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$i;

.field public static final enum ToString:Lcom/tokenautocomplete/TokenCompleteTextView$i;

.field public static final enum _Parent:Lcom/tokenautocomplete/TokenCompleteTextView$i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 3
    .line 4
    const-string v1, "_Parent"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$i;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 11
    .line 12
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 13
    .line 14
    const-string v1, "Clear"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$i;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 21
    .line 22
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 23
    .line 24
    const-string v1, "PartialCompletion"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$i;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;->PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 31
    .line 32
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 33
    .line 34
    const-string v1, "ToString"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$i;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;->ToString:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/tokenautocomplete/TokenCompleteTextView$i;->a()[Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;->$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method private static synthetic a()[Lcom/tokenautocomplete/TokenCompleteTextView$i;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tokenautocomplete/TokenCompleteTextView$i;

    const/4 v1, 0x0

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$i;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$i;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$i;->PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$i;->ToString:Lcom/tokenautocomplete/TokenCompleteTextView$i;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tokenautocomplete/TokenCompleteTextView$i;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tokenautocomplete/TokenCompleteTextView$i;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$i;->$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/tokenautocomplete/TokenCompleteTextView$i;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$i;

    .line 9
    return-object v0
.end method
