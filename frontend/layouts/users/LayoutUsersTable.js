import {
  Box,
  Text,
  Table,
  Thead,
  Tbody,
  Tr,
  Th,
  Td,
  TableContainer,
  Button,
  Flex,
  Spinner,
} from "@chakra-ui/react";

import { useQueryListUsers } from "service/users";
import LayoutUsersTableActions from "./LayoutUsersTableActions";

const LayoutUsersTable = () => {
  const { data, isLoading } = useQueryListUsers();

  if (isLoading) {
    return (
      <Flex flex={1} direction="column" align="center" justify="center">
        <Spinner
          thickness="4px"
          speed="0.65s"
          emptyColor="gray.200"
          color="primary"
          size="xl"
        />
      </Flex>
    );
  }

  return (
    <TableContainer mt="60px">
      <Table variant="simple">
        <Thead>
          <Tr>
            <Th>
              <Text color="greyText" fontSize="18px" fontWeight="semiBold">
                Nome
              </Text>
            </Th>

            <Th>
              <Text color="greyText" fontSize="18px" fontWeight="semiBold">
                Email
              </Text>
            </Th>

            <Th></Th>
          </Tr>
        </Thead>

        <Tbody>
          {data
            .filter((user) => !user.inativo)
            .map((user, index) => (
              <Tr key={index}>
                <Td>{user.nome}</Td>

                <Td>{user.email}</Td>

                <Td isNumeric>
                  <LayoutUsersTableActions user={user} />
                </Td>
              </Tr>
            ))}
        </Tbody>
      </Table>
    </TableContainer>
  );
};

export default LayoutUsersTable;
