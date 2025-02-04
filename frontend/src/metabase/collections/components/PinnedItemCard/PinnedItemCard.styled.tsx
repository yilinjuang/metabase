import styled from "styled-components";

import { color } from "metabase/lib/colors";
import { forwardRefToInnerRef } from "metabase/styled-components/utils";
import Icon from "metabase/components/Icon";
import Link from "metabase/components/Link";
import Card from "metabase/components/Card";
import ActionMenu from "metabase/collections/components/ActionMenu";

export const ItemCard = styled(Card)``;

export const ItemLink = styled(Link)`
  display: block;
  height: min-content;
`;

export const ItemIcon = styled(Icon)`
  color: ${color("brand")};
  height: 1.7rem;
  width: 1.7rem;
`;

export const HoverMenu = styled(ActionMenu)`
  visibility: hidden;
`;

export const Title = styled.div`
  font-weight: bold;
  font-size: 1rem;
  line-height: 1.5rem;
  color: ${color("text-dark")};
  transition: color 0.2s ease;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
`;

export const Description = forwardRefToInnerRef(styled.div`
  color: ${color("text-medium")};
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
`);

export const Body = styled.div`
  padding: 1.7rem;
  display: flex;
  flex-direction: column;
  cursor: pointer;

  &:hover {
    ${Title} {
      color: ${color("brand")};
    }

    ${HoverMenu} {
      visibility: visible;
    }
  }
`;

export const Header = styled.div`
  padding-bottom: 1rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
`;
