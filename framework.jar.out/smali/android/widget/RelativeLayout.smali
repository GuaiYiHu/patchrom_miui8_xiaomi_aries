.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$DependencyGraph;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_END:I = 0x13

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_END:I = 0x15

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_START:I = 0x14

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_START:I = 0x12

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEFAULT_WIDTH:I = 0x10000

.field public static final END_OF:I = 0x11

.field public static final LEFT_OF:I = 0x0

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I

.field private static final RULES_VERTICAL:[I

.field public static final START_OF:I = 0x10

.field public static final TRUE:I = -0x1

.field private static final VALUE_NOT_SET:I = -0x80000000

.field private static final VERB_COUNT:I = 0x16


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mIgnoreGravity:I

.field private mMeasureVerticalWithPaddingMargin:Z

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 193
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    .line 192
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 196
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    .line 85
    return-void

    .line 196
    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 205
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 207
    const v0, 0x800033

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 212
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 217
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$DependencyGraph;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 222
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 226
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 251
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 6
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I
    .param p3, "rules"    # [I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    .line 894
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 895
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 897
    invoke-direct {p0, p3, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 898
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_6

    .line 899
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 900
    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 899
    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 907
    :cond_0
    :goto_0
    invoke-direct {p0, p3, v4}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_7

    .line 909
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 910
    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 909
    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 915
    :cond_1
    :goto_1
    invoke-direct {p0, p3, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_8

    .line 917
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 922
    :cond_2
    :goto_2
    const/4 v1, 0x7

    invoke-direct {p0, p3, v1}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_9

    .line 924
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 931
    :cond_3
    :goto_3
    const/16 v1, 0x9

    aget v1, p3, v1

    if-eqz v1, :cond_4

    .line 932
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 935
    :cond_4
    const/16 v1, 0xb

    aget v1, p3, v1

    if-eqz v1, :cond_5

    .line 936
    if-ltz p2, :cond_5

    .line 937
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 885
    :cond_5
    return-void

    .line 901
    :cond_6
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_0

    aget v1, p3, v2

    if-eqz v1, :cond_0

    .line 902
    if-ltz p2, :cond_0

    .line 903
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 911
    :cond_7
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_1

    aget v1, p3, v4

    if-eqz v1, :cond_1

    .line 912
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 918
    :cond_8
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_2

    aget v1, p3, v5

    if-eqz v1, :cond_2

    .line 919
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 925
    :cond_9
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    aget v1, p3, v1

    if-eqz v1, :cond_3

    .line 926
    if-ltz p2, :cond_3

    .line 927
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 6
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I
    .param p3, "myBaseline"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/high16 v3, -0x80000000

    .line 943
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 946
    .local v2, "rules":[I
    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    .line 947
    .local v1, "baselineOffset":I
    if-eq v1, v4, :cond_1

    .line 948
    if-eq p3, v4, :cond_0

    .line 949
    sub-int/2addr v1, p3

    .line 951
    :cond_0
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 952
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 953
    return-void

    .line 958
    :cond_1
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 959
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 961
    invoke-direct {p0, v2, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 962
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_8

    .line 963
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 964
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 963
    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 971
    :cond_2
    :goto_0
    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 972
    if-eqz v0, :cond_9

    .line 973
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 974
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 973
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 979
    :cond_3
    :goto_1
    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 980
    if-eqz v0, :cond_a

    .line 981
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 986
    :cond_4
    :goto_2
    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 987
    if-eqz v0, :cond_b

    .line 988
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 995
    :cond_5
    :goto_3
    const/16 v3, 0xa

    aget v3, v2, v3

    if-eqz v3, :cond_6

    .line 996
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 999
    :cond_6
    const/16 v3, 0xc

    aget v3, v2, v3

    if-eqz v3, :cond_7

    .line 1000
    if-ltz p2, :cond_7

    .line 1001
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 942
    :cond_7
    return-void

    .line 965
    :cond_8
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_2

    aget v3, v2, v5

    if-eqz v3, :cond_2

    .line 966
    if-ltz p2, :cond_2

    .line 967
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 975
    :cond_9
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    aget v3, v2, v3

    if-eqz v3, :cond_3

    .line 976
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1

    .line 982
    :cond_a
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    aget v3, v2, v3

    if-eqz v3, :cond_4

    .line 983
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 989
    :cond_b
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x8

    aget v3, v2, v3

    if-eqz v3, :cond_5

    .line 990
    if-ltz p2, :cond_5

    .line 991
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_3
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I

    .prologue
    .line 1054
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1055
    .local v0, "childWidth":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1057
    .local v1, "left":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1058
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1053
    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    .prologue
    .line 1062
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1063
    .local v0, "childHeight":I
    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    .line 1065
    .local v1, "top":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1066
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 1061
    return-void
.end method

.method private compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 3
    .param p1, "p1"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "p2"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 649
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int v0, v1, v2

    .line 650
    .local v0, "topDiff":I
    if-eqz v0, :cond_0

    .line 651
    return v0

    .line 653
    :cond_0
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .locals 8
    .param p1, "childStart"    # I
    .param p2, "childEnd"    # I
    .param p3, "childSize"    # I
    .param p4, "startMargin"    # I
    .param p5, "endMargin"    # I
    .param p6, "startPadding"    # I
    .param p7, "endPadding"    # I
    .param p8, "mySize"    # I

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "childSpecMode":I
    const/4 v1, 0x0

    .line 744
    .local v1, "childSpecSize":I
    if-gez p8, :cond_4

    const/4 v2, 0x1

    .line 745
    .local v2, "isUnspecified":Z
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-eqz v6, :cond_5

    .line 764
    :cond_0
    move v5, p1

    .line 765
    .local v5, "tempStart":I
    move v4, p2

    .line 769
    .local v4, "tempEnd":I
    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_1

    .line 770
    add-int v5, p6, p4

    .line 772
    :cond_1
    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_2

    .line 773
    sub-int v6, p8, p7

    sub-int v4, v6, p5

    .line 777
    :cond_2
    sub-int v3, v4, v5

    .line 779
    .local v3, "maxAvailable":I
    const/high16 v6, -0x80000000

    if-eq p1, v6, :cond_9

    const/high16 v6, -0x80000000

    if-eq p2, v6, :cond_9

    .line 781
    if-eqz v2, :cond_8

    const/4 v0, 0x0

    .line 782
    :goto_1
    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 816
    :cond_3
    :goto_2
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    return v6

    .line 744
    .end local v2    # "isUnspecified":Z
    .end local v3    # "maxAvailable":I
    .end local v4    # "tempEnd":I
    .end local v5    # "tempStart":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isUnspecified":Z
    goto :goto_0

    .line 746
    :cond_5
    const/high16 v6, -0x80000000

    if-eq p1, v6, :cond_6

    const/high16 v6, -0x80000000

    if-eq p2, v6, :cond_6

    .line 748
    sub-int v6, p2, p1

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 749
    const/high16 v0, 0x40000000    # 2.0f

    .line 760
    :goto_3
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    return v6

    .line 750
    :cond_6
    if-ltz p3, :cond_7

    .line 752
    move v1, p3

    .line 753
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_3

    .line 756
    :cond_7
    const/4 v1, 0x0

    .line 757
    const/4 v0, 0x0

    goto :goto_3

    .line 781
    .restart local v3    # "maxAvailable":I
    .restart local v4    # "tempEnd":I
    .restart local v5    # "tempStart":I
    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1

    .line 784
    :cond_9
    if-ltz p3, :cond_b

    .line 786
    const/high16 v0, 0x40000000    # 2.0f

    .line 788
    if-ltz v3, :cond_a

    .line 790
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 793
    :cond_a
    move v1, p3

    goto :goto_2

    .line 795
    :cond_b
    const/4 v6, -0x1

    if-ne p3, v6, :cond_d

    .line 798
    if-eqz v2, :cond_c

    const/4 v0, 0x0

    .line 799
    :goto_4
    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 798
    :cond_c
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_4

    .line 800
    :cond_d
    const/4 v6, -0x2

    if-ne p3, v6, :cond_3

    .line 803
    if-ltz v3, :cond_e

    .line 805
    const/high16 v0, -0x80000000

    .line 806
    move v1, v3

    goto :goto_2

    .line 810
    :cond_e
    const/4 v0, 0x0

    .line 811
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private getRelatedView([II)Landroid/view/View;
    .locals 6
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    const/4 v5, 0x0

    .line 1007
    aget v0, p1, p2

    .line 1008
    .local v0, "id":I
    if-eqz v0, :cond_3

    .line 1009
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->-get0(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1010
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_0

    return-object v5

    .line 1011
    :cond_0
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1014
    .local v2, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 1015
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    .line 1016
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->-get0(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    aget v4, p1, p2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1017
    .restart local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_1

    return-object v5

    .line 1018
    :cond_1
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_0

    .line 1021
    :cond_2
    return-object v2

    .line 1024
    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    return-object v5
.end method

.method private getRelatedViewBaselineOffset([I)I
    .locals 6
    .param p1, "rules"    # [I

    .prologue
    const/4 v5, -0x1

    .line 1039
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v3

    .line 1040
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1041
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1042
    .local v1, "baseline":I
    if-eq v1, v5, :cond_0

    .line 1043
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1044
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 1045
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1046
    .local v0, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v1

    return v4

    .line 1050
    .end local v0    # "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "baseline":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return v5
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .prologue
    const/4 v3, 0x0

    .line 1028
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v1

    .line 1029
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1030
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1031
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1032
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v2

    .line 1035
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v3
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 257
    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    .line 256
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 258
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 259
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 260
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 667
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    .line 668
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 669
    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 670
    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    .line 667
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 672
    .local v10, "childWidthMeasureSpec":I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    .line 673
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 674
    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 675
    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move-object v0, p0

    move v8, p4

    .line 672
    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v9

    .line 677
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 666
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .prologue
    .line 682
    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    .line 683
    move-object/from16 v0, p2

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v8, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v1, p0

    move/from16 v9, p3

    .line 682
    invoke-direct/range {v1 .. v9}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v11

    .line 687
    .local v11, "childWidthMeasureSpec":I
    if-gez p4, :cond_0

    iget-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-eqz v1, :cond_1

    .line 700
    :cond_0
    iget-boolean v1, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v1, :cond_3

    .line 701
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int v1, p4, v1

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 702
    move-object/from16 v0, p2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 701
    sub-int/2addr v1, v2

    .line 702
    move-object/from16 v0, p2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 701
    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 708
    .local v13, "maxHeight":I
    :goto_0
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 709
    const/high16 v12, 0x40000000    # 2.0f

    .line 713
    .local v12, "heightMode":I
    :goto_1
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 716
    .end local v12    # "heightMode":I
    .end local v13    # "maxHeight":I
    .local v10, "childHeightMeasureSpec":I
    :goto_2
    invoke-virtual {p1, v11, v10}, Landroid/view/View;->measure(II)V

    .line 681
    return-void

    .line 688
    .end local v10    # "childHeightMeasureSpec":I
    :cond_1
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v1, :cond_2

    .line 690
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 689
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childHeightMeasureSpec":I
    goto :goto_2

    .line 696
    .end local v10    # "childHeightMeasureSpec":I
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childHeightMeasureSpec":I
    goto :goto_2

    .line 704
    .end local v10    # "childHeightMeasureSpec":I
    :cond_3
    const/4 v1, 0x0

    move/from16 v0, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .restart local v13    # "maxHeight":I
    goto :goto_0

    .line 711
    :cond_4
    const/high16 v12, -0x80000000

    .restart local v12    # "heightMode":I
    goto :goto_1
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, -0x80000000

    .line 822
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    .line 823
    .local v0, "layoutDirection":I
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    .line 825
    .local v1, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 827
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 853
    :cond_0
    :goto_0
    const/16 v4, 0x15

    aget v4, v1, v4

    if-eqz v4, :cond_7

    :goto_1
    return v2

    .line 828
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-eq v4, v5, :cond_2

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 830
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 831
    :cond_2
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 833
    const/16 v4, 0xd

    aget v4, v1, v4

    if-nez v4, :cond_3

    const/16 v4, 0xe

    aget v4, v1, v4

    if-eqz v4, :cond_5

    .line 834
    :cond_3
    if-nez p4, :cond_4

    .line 835
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 840
    :goto_2
    return v2

    .line 837
    :cond_4
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 838
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 844
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 845
    iget v4, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v4, p3, v4

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 846
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 848
    :cond_6
    iget v4, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 849
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 853
    goto/16 :goto_1
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myHeight"    # I
    .param p4, "wrapContent"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    .line 859
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 861
    .local v0, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 863
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 882
    :cond_0
    :goto_0
    const/16 v3, 0xc

    aget v3, v0, v3

    if-eqz v3, :cond_6

    :goto_1
    return v1

    .line 864
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 866
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    .line 867
    :cond_2
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 869
    const/16 v3, 0xd

    aget v3, v0, v3

    if-nez v3, :cond_3

    const/16 v3, 0xf

    aget v3, v0, v3

    if-eqz v3, :cond_5

    .line 870
    :cond_3
    if-nez p4, :cond_4

    .line 871
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 876
    :goto_2
    return v1

    .line 873
    :cond_4
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 874
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2

    .line 878
    :cond_5
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 879
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_0

    :cond_6
    move v1, v2

    .line 882
    goto :goto_1
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 265
    .local v0, "version":I
    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 266
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 263
    return-void

    :cond_0
    move v1, v3

    .line 265
    goto :goto_0

    :cond_1
    move v2, v3

    .line 266
    goto :goto_1
.end method

.method private sortChildren()V
    .locals 5

    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 367
    .local v0, "count":I
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_1

    .line 368
    :cond_0
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 371
    :cond_1
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_3

    .line 372
    :cond_2
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 375
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 376
    .local v1, "graph":Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 378
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 379
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_4
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 383
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 365
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1103
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1114
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v4, :cond_0

    .line 1115
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    invoke-direct {v5, p0, v7}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1119
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1120
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1123
    :cond_1
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "view$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1124
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1125
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 1124
    if-eqz v4, :cond_2

    .line 1126
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1127
    const/4 v4, 0x1

    return v4

    .line 1131
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1132
    return v6
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1097
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1086
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1108
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1087
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1137
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1073
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 1075
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1076
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1077
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1079
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1080
    .local v3, "st":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1075
    .end local v3    # "st":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1070
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    if-eqz v4, :cond_0

    .line 389
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 390
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 393
    :cond_0
    const/16 v30, -0x1

    .line 394
    .local v30, "myWidth":I
    const/16 v29, -0x1

    .line 396
    .local v29, "myHeight":I
    const/16 v42, 0x0

    .line 397
    .local v42, "width":I
    const/16 v19, 0x0

    .line 399
    .local v19, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    .line 400
    .local v43, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 401
    .local v20, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v44

    .line 402
    .local v44, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 405
    .local v21, "heightSize":I
    if-eqz v43, :cond_1

    .line 406
    move/from16 v30, v44

    .line 409
    :cond_1
    if-eqz v20, :cond_2

    .line 410
    move/from16 v29, v21

    .line 413
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-ne v0, v4, :cond_3

    .line 414
    move/from16 v42, v30

    .line 417
    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-ne v0, v4, :cond_4

    .line 418
    move/from16 v19, v29

    .line 421
    :cond_4
    const/16 v25, 0x0

    .line 422
    .local v25, "ignore":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v5, 0x800007

    and-int v18, v4, v5

    .line 423
    .local v18, "gravity":I
    const v4, 0x800003

    move/from16 v0, v18

    if-eq v0, v4, :cond_9

    if-eqz v18, :cond_9

    const/16 v22, 0x1

    .line 424
    .local v22, "horizontalGravity":Z
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v18, v4, 0x70

    .line 425
    const/16 v4, 0x30

    move/from16 v0, v18

    if-eq v0, v4, :cond_a

    if-eqz v18, :cond_a

    const/16 v39, 0x1

    .line 427
    .local v39, "verticalGravity":Z
    :goto_1
    const v28, 0x7fffffff

    .line 428
    .local v28, "left":I
    const v38, 0x7fffffff

    .line 429
    .local v38, "top":I
    const/high16 v35, -0x80000000

    .line 430
    .local v35, "right":I
    const/high16 v12, -0x80000000

    .line 432
    .local v12, "bottom":I
    const/16 v31, 0x0

    .line 433
    .local v31, "offsetHorizontalAxis":Z
    const/16 v32, 0x0

    .line 435
    .local v32, "offsetVerticalAxis":Z
    if-nez v22, :cond_5

    if-eqz v39, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 436
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 439
    .end local v25    # "ignore":Landroid/view/View;
    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-eq v0, v4, :cond_b

    const/16 v27, 0x1

    .line 440
    .local v27, "isWrapContentWidth":Z
    :goto_2
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-eq v0, v4, :cond_c

    const/16 v26, 0x1

    .line 447
    .local v26, "isWrapContentHeight":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v9

    .line 448
    .local v9, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_7

    .line 449
    const/high16 v30, 0x10000

    .line 452
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    .line 453
    .local v41, "views":[Landroid/view/View;
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    .line 455
    .local v17, "count":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 456
    aget-object v13, v41, v24

    .line 457
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_8

    .line 458
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 459
    .local v34, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 461
    .local v36, "rules":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v27

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 465
    const/16 v31, 0x1

    .line 455
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_8
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 423
    .end local v9    # "layoutDirection":I
    .end local v12    # "bottom":I
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "count":I
    .end local v22    # "horizontalGravity":Z
    .end local v24    # "i":I
    .end local v26    # "isWrapContentHeight":Z
    .end local v27    # "isWrapContentWidth":Z
    .end local v28    # "left":I
    .end local v31    # "offsetHorizontalAxis":Z
    .end local v32    # "offsetVerticalAxis":Z
    .end local v35    # "right":I
    .end local v38    # "top":I
    .end local v39    # "verticalGravity":Z
    .end local v41    # "views":[Landroid/view/View;
    .restart local v25    # "ignore":Landroid/view/View;
    :cond_9
    const/16 v22, 0x0

    .restart local v22    # "horizontalGravity":Z
    goto/16 :goto_0

    .line 425
    :cond_a
    const/16 v39, 0x0

    .restart local v39    # "verticalGravity":Z
    goto/16 :goto_1

    .line 439
    .end local v25    # "ignore":Landroid/view/View;
    .restart local v12    # "bottom":I
    .restart local v28    # "left":I
    .restart local v31    # "offsetHorizontalAxis":Z
    .restart local v32    # "offsetVerticalAxis":Z
    .restart local v35    # "right":I
    .restart local v38    # "top":I
    :cond_b
    const/16 v27, 0x0

    .restart local v27    # "isWrapContentWidth":Z
    goto :goto_2

    .line 440
    :cond_c
    const/16 v26, 0x0

    .restart local v26    # "isWrapContentHeight":Z
    goto :goto_3

    .line 470
    .restart local v9    # "layoutDirection":I
    .restart local v17    # "count":I
    .restart local v24    # "i":I
    .restart local v41    # "views":[Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    .line 471
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v37, v0

    .line 474
    .local v37, "targetSdkVersion":I
    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_19

    .line 475
    aget-object v13, v41, v24

    .line 476
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 477
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 479
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 481
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 482
    const/16 v32, 0x1

    .line 485
    :cond_e
    if-eqz v27, :cond_f

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 487
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_15

    .line 488
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 501
    :cond_f
    :goto_6
    if-eqz v26, :cond_10

    .line 502
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_18

    .line 503
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 509
    :cond_10
    :goto_7
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_11

    if-eqz v39, :cond_12

    .line 510
    :cond_11
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 511
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v38

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v38

    .line 514
    :cond_12
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_13

    if-eqz v22, :cond_14

    .line 515
    :cond_13
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 516
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 474
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 490
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_15
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto :goto_6

    .line 493
    :cond_16
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_17

    .line 494
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto :goto_6

    .line 496
    :cond_17
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto/16 :goto_6

    .line 505
    :cond_18
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_7

    .line 523
    .end local v13    # "child":Landroid/view/View;
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_19
    const/4 v11, 0x0

    .line 524
    .local v11, "baselineView":Landroid/view/View;
    const/4 v10, 0x0

    .line 525
    .local v10, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0x0

    .end local v10    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "baselineView":Landroid/view/View;
    :goto_8
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1d

    .line 526
    aget-object v13, v41, v24

    .line 527
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1b

    .line 528
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 529
    .local v15, "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v11, :cond_1a

    if-nez v10, :cond_1c

    .line 531
    :cond_1a
    :goto_9
    move-object v11, v13

    .line 532
    .local v11, "baselineView":Landroid/view/View;
    move-object v10, v15

    .line 525
    .end local v11    # "baselineView":Landroid/view/View;
    .end local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1b
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 530
    .restart local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-gez v4, :cond_1b

    goto :goto_9

    .line 536
    .end local v13    # "child":Landroid/view/View;
    .end local v15    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1d
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 538
    if-eqz v27, :cond_22

    .line 541
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int v42, v42, v4

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_1e

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 547
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 548
    move/from16 v0, v42

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v42

    .line 550
    if-eqz v31, :cond_22

    .line 551
    const/16 v24, 0x0

    :goto_a
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_22

    .line 552
    aget-object v13, v41, v24

    .line 553
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_20

    .line 554
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 555
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 556
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_1f

    const/16 v4, 0xe

    aget v4, v36, v4

    if-eqz v4, :cond_21

    .line 557
    :cond_1f
    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 551
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_20
    :goto_b
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 558
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_21
    const/16 v4, 0xb

    aget v4, v36, v4

    if-eqz v4, :cond_20

    .line 559
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 560
    .local v16, "childWidth":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v4, v42, v4

    sub-int v4, v4, v16

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 561
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v16

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_b

    .line 568
    .end local v13    # "child":Landroid/view/View;
    .end local v16    # "childWidth":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_22
    if-eqz v26, :cond_27

    .line 571
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int v19, v19, v4

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_23

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 577
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 578
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v19

    .line 580
    if-eqz v32, :cond_27

    .line 581
    const/16 v24, 0x0

    :goto_c
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_27

    .line 582
    aget-object v13, v41, v24

    .line 583
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_25

    .line 584
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 585
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    .line 586
    .restart local v36    # "rules":[I
    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_24

    const/16 v4, 0xf

    aget v4, v36, v4

    if-eqz v4, :cond_26

    .line 587
    :cond_24
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 581
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_25
    :goto_d
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 588
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36    # "rules":[I
    :cond_26
    const/16 v4, 0xc

    aget v4, v36, v4

    if-eqz v4, :cond_25

    .line 589
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 590
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v4, v19, v4

    sub-int/2addr v4, v14

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 591
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_d

    .line 598
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "childHeight":I
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v36    # "rules":[I
    :cond_27
    if-nez v22, :cond_28

    if-eqz v39, :cond_2c

    .line 599
    :cond_28
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 600
    .local v7, "selfBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v6, v42, v6

    .line 601
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move/from16 v45, v0

    sub-int v45, v19, v45

    .line 600
    move/from16 v0, v45

    invoke-virtual {v7, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 603
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 604
    .local v8, "contentBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v5, v35, v28

    sub-int v6, v12, v38

    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 607
    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int v23, v4, v28

    .line 608
    .local v23, "horizontalOffset":I
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v40, v4, v38

    .line 609
    .local v40, "verticalOffset":I
    if-nez v23, :cond_29

    if-eqz v40, :cond_2c

    .line 610
    :cond_29
    const/16 v24, 0x0

    :goto_e
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_2c

    .line 611
    aget-object v13, v41, v24

    .line 612
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2b

    move-object/from16 v0, v25

    if-eq v13, v0, :cond_2b

    .line 613
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 614
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v22, :cond_2a

    .line 615
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v23

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 616
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v23

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 618
    :cond_2a
    if-eqz v39, :cond_2b

    .line 619
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v40

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 620
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v40

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 610
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2b
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 627
    .end local v7    # "selfBounds":Landroid/graphics/Rect;
    .end local v8    # "contentBounds":Landroid/graphics/Rect;
    .end local v13    # "child":Landroid/view/View;
    .end local v23    # "horizontalOffset":I
    .end local v40    # "verticalOffset":I
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 628
    sub-int v33, v30, v42

    .line 629
    .local v33, "offsetWidth":I
    const/16 v24, 0x0

    :goto_f
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_2e

    .line 630
    aget-object v13, v41, v24

    .line 631
    .restart local v13    # "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2d

    .line 632
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    .line 633
    .restart local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v4, v33

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 634
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v4, v33

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 629
    .end local v34    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2d
    add-int/lit8 v24, v24, 0x1

    goto :goto_f

    .line 639
    .end local v13    # "child":Landroid/view/View;
    .end local v33    # "offsetWidth":I
    :cond_2e
    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 387
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 360
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 322
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 323
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 324
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 327
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 328
    or-int/lit8 p1, p1, 0x30

    .line 331
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 332
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 321
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 338
    and-int v0, p1, v2

    .line 339
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 340
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 341
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 337
    :cond_0
    return-void
.end method

.method public setIgnoreGravity(I)V
    .locals 0
    .param p1, "viewId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 287
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 286
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 347
    and-int/lit8 v0, p1, 0x70

    .line 348
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 349
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 350
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 346
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method
