.class final enum Landroidx/profileinstaller/FileSectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/profileinstaller/FileSectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/profileinstaller/FileSectionType;

.field public static final enum AGGREGATION_COUNT:Landroidx/profileinstaller/FileSectionType;

.field public static final enum CLASSES:Landroidx/profileinstaller/FileSectionType;

.field public static final enum DEX_FILES:Landroidx/profileinstaller/FileSectionType;

.field public static final enum EXTRA_DESCRIPTORS:Landroidx/profileinstaller/FileSectionType;

.field public static final enum METHODS:Landroidx/profileinstaller/FileSectionType;


# instance fields
.field private final mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/profileinstaller/FileSectionType;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-string v4, "DEX_FILES"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    .line 11
    .line 12
    sput-object v0, Landroidx/profileinstaller/FileSectionType;->DEX_FILES:Landroidx/profileinstaller/FileSectionType;

    .line 13
    .line 14
    new-instance v0, Landroidx/profileinstaller/FileSectionType;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    const-wide/16 v2, 0x1

    .line 18
    .line 19
    const-string v4, "EXTRA_DESCRIPTORS"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    .line 23
    .line 24
    sput-object v0, Landroidx/profileinstaller/FileSectionType;->EXTRA_DESCRIPTORS:Landroidx/profileinstaller/FileSectionType;

    .line 25
    .line 26
    new-instance v0, Landroidx/profileinstaller/FileSectionType;

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    const-wide/16 v2, 0x2

    .line 30
    .line 31
    const-string v4, "CLASSES"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    .line 35
    .line 36
    sput-object v0, Landroidx/profileinstaller/FileSectionType;->CLASSES:Landroidx/profileinstaller/FileSectionType;

    .line 37
    .line 38
    new-instance v0, Landroidx/profileinstaller/FileSectionType;

    .line 39
    const/4 v1, 0x3

    .line 40
    .line 41
    const-wide/16 v2, 0x3

    .line 42
    .line 43
    const-string v4, "METHODS"

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    .line 47
    .line 48
    sput-object v0, Landroidx/profileinstaller/FileSectionType;->METHODS:Landroidx/profileinstaller/FileSectionType;

    .line 49
    .line 50
    new-instance v0, Landroidx/profileinstaller/FileSectionType;

    .line 51
    const/4 v1, 0x4

    .line 52
    .line 53
    const-wide/16 v2, 0x4

    .line 54
    .line 55
    const-string v4, "AGGREGATION_COUNT"

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    .line 59
    .line 60
    sput-object v0, Landroidx/profileinstaller/FileSectionType;->AGGREGATION_COUNT:Landroidx/profileinstaller/FileSectionType;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroidx/profileinstaller/FileSectionType;->a()[Landroidx/profileinstaller/FileSectionType;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    sput-object v0, Landroidx/profileinstaller/FileSectionType;->$VALUES:[Landroidx/profileinstaller/FileSectionType;

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-wide p3, p0, Landroidx/profileinstaller/FileSectionType;->mValue:J

    .line 6
    return-void
.end method

.method private static synthetic a()[Landroidx/profileinstaller/FileSectionType;
    .locals 3

    .line 1
    const/4 v0, 0x5

    new-array v0, v0, [Landroidx/profileinstaller/FileSectionType;

    const/4 v1, 0x0

    sget-object v2, Landroidx/profileinstaller/FileSectionType;->DEX_FILES:Landroidx/profileinstaller/FileSectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/profileinstaller/FileSectionType;->EXTRA_DESCRIPTORS:Landroidx/profileinstaller/FileSectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/profileinstaller/FileSectionType;->CLASSES:Landroidx/profileinstaller/FileSectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/profileinstaller/FileSectionType;->METHODS:Landroidx/profileinstaller/FileSectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroidx/profileinstaller/FileSectionType;->AGGREGATION_COUNT:Landroidx/profileinstaller/FileSectionType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/profileinstaller/FileSectionType;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/profileinstaller/FileSectionType;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/profileinstaller/FileSectionType;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/profileinstaller/FileSectionType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/profileinstaller/FileSectionType;->$VALUES:[Landroidx/profileinstaller/FileSectionType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/profileinstaller/FileSectionType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/profileinstaller/FileSectionType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/profileinstaller/FileSectionType;->mValue:J

    return-wide v0
.end method
